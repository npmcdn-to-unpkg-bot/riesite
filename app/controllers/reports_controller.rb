class ReportsController < ApplicationController
  before_action :authorise

  def inventory
    @products = Product.all
    @product_inventory_awaiting_delivery =[]
    orders_awaiting_delivery = Order.where(shipped_date: nil )
    @products.each do |product|
        quantity = 0
        orders_awaiting_delivery.each do |order|
            items = CartItem.where(order_id: order.id, product_id: product.id)
            quantity += items.sum(:quantity)
        end
        @product_inventory_awaiting_delivery.push(quantity)
    end
  end

  def sales
    @products = Product.all
    @line_items = CartItem.all
    @orders = Order.all
    @grand_total = 0
    @grand_total_units = 0
    @orders.each do |order|
        @grand_total += order.total_revenue
        @line_items.each do |item|
          if item.order_id == order.id
            @grand_total_units += item.quantity
          end
        end
    end
  end

  def profit
    @products = Product.all
    @line_items = CartItem.all
    @orders = Order.all
    @grand_total_revenue = 0
    @grand_total_cost = 0
    @grand_total_tax = 0
    @gross_profit = 0
    @gross_profit_percentage = 0
    @orders.each do |order|
        @grand_total_revenue += order.total_revenue
        @grand_total_cost += order.total_cost
        @grand_total_tax += order.total_tax
        profit = order.total_revenue - order.total_tax - order.total_cost
        @gross_profit += profit
    end
    unless @grand_total_revenue == 0
        @gross_profit_percentage = @gross_profit / (@grand_total_revenue - @grand_total_tax)
      end
    end

    def shipping
      @orders = Order.where(shipped_date: nil).where.not(payment_date: nil)
    end

    def finalise
      @orders = Order.where(finalised_date: nil).where.not(shipped_date: nil)
    end

    private

    def authorise
      redirect_to root_path unless (@current_user.present? && @current_user.admin?)
    end

end
