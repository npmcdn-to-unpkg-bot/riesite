class OrdersController < ApplicationController
  before_action :authorise

  def index
    if @current_user.present? && @current_user.admin?
      @orders = Order.all
    elsif @current_user.present? && @current_user.admin.blank?
      @orders = Order.where(:user_id => @current_user.id)
    elsif params[:id].present?
      @orders = Order.where(:user_id => params[:id])
    else
      redirect_to root_path
    end
  end

  def new
    @cart_items = @current_user.cart_items
    @order = Order.create user_id: @current_user.id
    total_price = 0
    total_cost = 0
    @cart_items.each do |item|
        product = Product.find item.product_id
        product.inventory -= item.quantity
        product.save
        item.order_id = @order.id
        item.save
        total_price += (item.unit_price * item.quantity)
        total_cost += (item.unit_cost * item.quantity)
    end
    @order.total_revenue = total_price
    @order.total_cost = total_cost
    @order.purchase_date = DateTime.now
    @order.save
    @purchased_items = CartItem.where(:order_id => @order.id)
  end

  def edit
    @order = Order.find params[:id]
    @purchased_items = CartItem.where(:order_id => @order.id)
  end

  def show
    @order = Order.find params[:id]
    @customer = User.where(:order_id => @order.id)
    @purchased_items = CartItem.where(:order_id => @order.id)
  end

  def update
    order = Order.find params[:id]
    order.update order_params
    session[:order_id] = order.id
    if order.finalised_date.present?
        redirect_to reports_finalise_path
    elsif order.shipped_date.present?
        redirect_to reports_shipping_path
    elsif order.payment_date.nil?
        redirect_to new_charge_path
    else
        redirect_to order_path(order.id)
    end
  end

  def destroy
    order = Order.find params[:id]
    order.destroy
    redirect_to orders_path
  end

private
def authorise
  redirect_to root_path unless (@current_user.present?)
end

def order_params
  params.require(:order).permit(:purchase_date, :payment_date, :shipped_date, :finalised_date, :delivery_address, :shipping_id, :invoice_number)
end

end
