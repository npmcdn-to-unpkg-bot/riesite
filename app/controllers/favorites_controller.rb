class FavouritesController < ApplicationController
  before_action :set_project

  def create
    favourite = Favourite.find params[@product]
    favourite.create
    redirect_to product
  end

  def destroy
    favourite = Favourite.find params[:id]
    fauvorite.destroy
    redirect_to product
  end

  private
  def set_product
    @product = Project.find params [:product_id]
  end

end
