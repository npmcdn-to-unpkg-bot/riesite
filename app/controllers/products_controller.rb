class ProductsController < ApplicationController

  before_action :authorise, :only => [:new, :create, :edit, :update, :destroy]

  def new
    @product = Product.new
  end

  def create
    product = Product.create product_params
    redirect_to product
  end

  def index
    @products = Product.all
  end

  def edit
    @product = Product.find params[:id]
  end

  def update
    product = Product.find params[:id]
    product.update product_params
    redirect_to product
  end

  def show
    @product = Product.find params[:id]
  end

  def destroy
    product = Product.find params[:id]
    product.destroy
    redirect_to product
  end

  private
  def product_params
    params.require(:product).permit(:name, :price, :image, :imageshow, :description, :category_ids => [])
  end

  def authorise
    redirect_to root_path unless (@current_user.present? && @current_user.admin?)
  end

end
