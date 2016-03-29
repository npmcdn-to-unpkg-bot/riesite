class CategoriesController < ApplicationController

  before_action :authorise, :only => [:new, :create, :edit, :update, :destroy]

  def new
    @category = Category.new
  end

  def create
    category = Category.create category_params
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
    params.require(:category).permit(:name, :image, :banner, :description, :product_ids => [])
  end

  def authorise
    redirect_to root_path unless (@current_user.present? && @current_user.admin?)
  end

end
