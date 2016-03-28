class UsersController < ApplicationController

  before_action :authorise, :only => [:index]

  def new
    @user = User.new
  end

  def create
    @user = User.new users_params
    if @user.save
      session[:user_id] = @user.id
      redirect_to root_path
    else
      render :new
    end
  end

  def index
    @users = User.all
  end

  def edit
    @user = @current_user
  end

  def show
  @user = User.find params[:id]
  end

  def update
    user = @current_user
    user.update users_params
    redirect_to user
  end

  def destroy
    user = User.find params[:i]
    user.destroy
    redirect_to products
  end

  private
  def users_params
    params.require(:user).permit(:email, :username, :password, :password_confirmation, :image)
  end

  def authorise
    redirect_to root_path unless (@current_user.present? && @current_user.admin?)
  end

end
