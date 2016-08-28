class ReportsController < ApplicationController
  before_action :authorise

def inventory
    @products = Product.all
    @product_inventory_awaiting_delivery =[]
    wishes_awaiting_delivery = Wish.where(:shipped_date => nil )
    @products.each do |product|
        quantity = 0
        wishes_awaiting_delivery.each do |wish|
            items = ShoppingCart.where(:wish_id => wish.id).where(:product_id => product.id)
            quantity += items.sum(:quantity)
        end
        @product_inventory_awaiting_delivery.push(quantity)
    end
end

def sales
    @products = Product.all
    @line_items = ShoppingCart.all
    @wishes = Wish.all
    @grand_total = 0
    @grand_total_units = 0
    @wishes.each do |wish|
        @grand_total += wish.total_revenue
        @line_items.each do |item|
          if item.wish_id == wish.id
            @grand_total_units += item.quantity
          end
        end
    end
end

def profit
  @products = Product.all
  @line_items = ShoppingCart.all
  @wishes = Wish.all
  @grand_total_revenue = 0
  @grand_total_cost = 0
  @grand_total_tax = 0
  @gross_profit = 0
  @gross_profit_percentage = 0
  @wishes.each do |wish|
      @grand_total_revenue += wish.total_revenue
      @grand_total_cost += wish.total_cost
      @grand_total_tax += wish.total_tax
      profit = wish.total_revenue - wish.total_tax - wish.total_cost
      @gross_profit += profit
  end
  unless @grand_total_revenue == 0
      @gross_profit_percentage = @gross_profit / (@grand_total_revenue - @grand_total_tax)
    end
  end

  def shipping
    @wishes = Wish.where(:shipped_date => nil).where.not(:payment_date => nil)
  end

  def finalise
    @wishes = Wish.where(:finalised_date => nil).where.not(:shipped_date => nil)
  end

  private

  def authorise
    redirect_to root_path unless (@current_user.present? && @current_user.admin?)
  end

end
