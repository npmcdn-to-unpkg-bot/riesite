class WishesController < ApplicationController
  before_action :authorise

  def index
    if @current_user.present? && @current_user.admin?
        @wishes = Wish.all
    elsif @current_user.present? && @current_user.admin.blank?
        @wishes = Wish.where(:user_id => @current_user.id)
    elsif params[:id].present?
        @wishes = Wish.where(:user_id => params[:id])
    else
        redirect_to root_path
    end
  end

  def new
      @cart_items = ShoppingCart.where(:wish_id => nil).where(:user_id => @current_user.id)
      @wish = Wish.create :user_id => @current_user.id
      total_price = 0
      total_cost = 0
      @cart_items.each do |item|
          product = Product.find item.product_id
          product.inventory -= item.quantity
          product.save
          item.wish_id = @wish.id
          item.save
          total_price += (item.unit_price * item.quantity)
          total_cost += (item.unit_cost * item.quantity)
      end
      @wish.total_revenue = total_price
      @wish.total_cost = total_cost
      @wish.purchase_date = DateTime.now
      @wish.save
      @purchased_items = ShoppingCart.where(:wish_id => @wish.id)
  end

  def edit
    @wish = Wish.find params[:id]
    @purchased_items = ShoppingCart.where(:wish_id => @wish.id)
  end

  def show
    @wish = Wish.find params[:id]
    @customer = User.where(:wish_id => @wish.id)
    @purchased_items = ShoppingCart.where(:wish_id => @wish.id)
  end

  def update
    wish = Wish.find params[:id]
    wish.update wish_params
    session[:wish_id] = wish.id
    if wish.finalised_date.present?
        redirect_to reports_finalise_path
    elsif wish.shipped_date.present?
        redirect_to reports_shipping_path
    elsif wish.payment_date.nil?
        redirect_to new_charge_path
    else
        redirect_to wish_path(wish.id)
    end
  end

  def destroy
    wish = Wish.find params[:id]
    wish.destroy
    redirect_to wishes_path
  end

private
def authorise
  redirect_to root_path unless (@current_user.present?)
end

def wish_params
  params.require(:wish).permit(:purchase_date, :payment_date, :shipped_date, :finalised_date, :delivery_address, :shipping_id, :invoice_number)
end

end
