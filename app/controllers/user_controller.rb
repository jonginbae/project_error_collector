class UserController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.new user_params
    if params[:commit] == 'Cancel'
      redirect_to login_path
    else
      if @user.save
        flash[:success] = "user_create_success"
        redirect_to login_path
      else
        flash[:eroor] = "user_create_fail"
        render :new
      end
    end
  end


  def edit
    @user = @current_user
  end

  def update
    if params[:commit] == 'Cancel'
      redirect_to main_path
    elsif params[:commit] == 'Delete'
      user = User.find @current_user.id
      user.destroy
      redirect_to login_path()
    else
        user = @current_user
        user.update user_params
        redirect_to main_path
    end
  end
end

private
    def user_params
      params.require(:user).permit(:first_name , :last_name , :password , :password_confirmation , :email , :github , :phone , :authority)
    end

    def authorise
      flash[error] = "login_fail"
      unless
        @current_user.present?
        redirect_to login_path unless @current_user.present?
      end
    end
