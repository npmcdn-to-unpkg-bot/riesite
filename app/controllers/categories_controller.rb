class CategoriesController < ApplicationController

  before_action :authorise, :only => [:new, :create, :edit, :update, :destroy]

  def new
    @category = Category.new
  end

  def create
    image = Cloudinary::Uploader.upload(params[:image])
    banner = Cloudinary::Uploader.upload(params[:banner])
    category = Category.create category_params
    category.image = image["url"]
    category.banner = banner["url"]
    category.save
    redirect_to category
  end


  def index
    @categories = Category.all
  end

  def edit
    @category = Category.find params[:id]
  end

  def update
    image = Cloudinary::Uploader.upload(params[:image])
    banner = Cloudinary::Uploader.upload(params[:banner])
    category = Category.find params[:id]
    category.image = image["url"]
    category.banner = banner["url"]
    category.update category_params
    redirect_to category
  end

  def show
    @category = Category.find params[:id]
  end

  def destroy
    category = Category.find params[:id]
    category.destroy
    redirect_to category
  end

  private
  def category_params
    params.require(:category).permit(:name, :description, :product_ids => [])
  end

  def authorise
    redirect_to root_path unless (@current_user.present? && @current_user.admin?)
  end

end
