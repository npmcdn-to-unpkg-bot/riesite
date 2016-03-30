class CategoriesController < ApplicationController

  before_action :authorise, :only => [:new, :create, :edit, :update, :destroy]

  def new
    @category = Category.new
  end

  def create
    category = Category.create category_params
    if params[:image].present?
      image = Cloudinary::Uploader.upload(params[:image])
      category.image = image["url"]
    end
    if params[:banner].present?
      banner = Cloudinary::Uploader.upload(params[:banner])
      category.imageshow = banner["url"]
    end
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
    category = Category.find params[:id]
    if params[:image].present?
      image = Cloudinary::Uploader.upload(params[:image])
      category.image = image["url"]
    end
    if params[:banner].present?
      banner = Cloudinary::Uploader.upload(params[:banner])
      category.banner = banner["url"]
    end
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
