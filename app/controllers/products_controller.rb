class ProductsController < ApplicationController

  before_action :authorise, :only => [:new, :create, :edit, :update, :destroy]

  def new
    @product = Product.new
  end

  def create
    product = Product.create product_params
    if params[:image].present?
      image = Cloudinary::Uploader.upload(params[:image])
      product.update(:image => image["url"])
    end
    if params[:imageshow].present?
      imageshow = Cloudinary::Uploader.upload(params[:imageshow])
      product.imageshow = imageshow["url"]
    end
    redirect_to product
  end


  def index
    @products = Product.all.sort_by do |product|
      product.favorites.count
    end
  end

  def edit
    @product = Product.find params[:id]
  end

  def update
    product = Product.find params[:id]
    if params[:image].present?
      image = Cloudinary::Uploader.upload(params[:image])
      product.image = image["url"]
    end
    if params[:imageshow].present?
      imageshow = Cloudinary::Uploader.upload(params[:imageshow])
      product.imageshow = imageshow["url"]
    end
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
    params.require(:product).permit(:name, :price, :description, :inventory, :category_ids => [])
  end

  def authorise
    redirect_to root_path unless (@current_user.present? && @current_user.admin?)
  end

end
