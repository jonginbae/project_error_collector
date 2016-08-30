class LoginController < ApplicationController

  def index
  end

  def create
    user = User.find_by :email => params[:email]

    if user.present? && user.authenticate(params[:password])
      flash[:success] = "login_success"
      session[:user_id] = user.id
      @current_user = user
      redirect_to main_path
    else
      flash[:error] = "login_fail"
      redirect_to login_path
    end
  end

  def findPassword_path
    @user = User.find params[:email]
  end

  def destroy
    session[:user_id] = nil
    flash[:scucess] = "logout_sucess"

    redirect_to login_path
  end

end
