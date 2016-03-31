class FavoriteProductsController < ApplicationController
  before_action :set_product

  def create
    if Favorite.create(favorited: @product, user: @current_user)
      redirect_to @product
    else
      redirect_to @product
    end
  end

  def destroy
    Favorite.where(favorited_id: @product.id, user_id: @current_user.id).first.destroy
    redirect_to :back
  end

  private

  def set_product
    @product = Product.find(params[:product_id] || params[:id])
end
end
