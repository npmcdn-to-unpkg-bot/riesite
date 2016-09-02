class CartItemsController < ApplicationController
  before_action :require_login

  def index
    @cart_items = @current_user.cart_items
  end

  def add_cart
    product = Product.find params[:id]
    line = @current_user.cart_items.find_by(product: product)
    if line
      # line.update(quantity: (line.quantity.to_i +1)) if (line.quantity < product.inventory)
      if (line.quantity < product.inventory)
        line.quantity = line.quantity.to_i + 1
        line.save
      end
    else
      @current_user.cart_items << CartItem.new(product: product, quantity: 1, unit_cost: product.price, unit_price: product.price)
    end
    redirect_to cart_path
  end

  def change_qty
    line = @current_user.cart_items.find params[:id]
    product = line.product
    change = params[:sign]
    unless line.quantity >= product.inventory && change.to_i == 1
        line.quantity += change.to_i
        line.save
    end
    if line.quantity == 0
        line.destroy
    end
    redirect_to cart_path
  end

  def destroy
    line = @current_user.cart_items.find params[:id]
    line.destroy
    redirect_to cart_path
  end

  def destroy_cart
    @current_user.cart_items.destroy_all
    redirect_to products_path
  end

  private

  def require_login
    unless @current_user.present?
      flash[:error] = "Please login to add contents to your shopping cart"
      redirect_to login_path
    end
  end

end
