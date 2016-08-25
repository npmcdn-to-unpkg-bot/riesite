class UsersController < ApplicationController

  before_action :authorise, :only => [:index]

  def new
    @user = User.new
  end

  def create
     @user = User.new users_params

     respond_to do |format|
       if @user.save
         session[:user_id] = @user.id
         # The line below is the only additional line we need in our Users controller.
         UserMailer.welcome_email(@user).deliver_now
         format.html { redirect_to root_path }
         format.json { render :show, status: :created, location: @user }
       else
         format.html { render :new }
         format.json { render json: @user.errors, status: :unprocessable_entity }
       end
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
    if params[:image].present?
      image = Cloudinary::Uploader.upload(params[:image])
      user.image = image["url"]
    end
    user.update users_params
    redirect_to user
  end

  def destroy
    user = User.find params[:id]
    user.destroy
    redirect_to(:back)
  end

  private
  def users_params
    params.require(:user).permit(:email, :username, :password, :password_confirmation, :image)
  end

  def authorise
    redirect_to root_path unless (@current_user.present? && @current_user.admin?)
  end

end
