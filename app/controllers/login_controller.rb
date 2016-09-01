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

  def findPassword
  end

 def sendEmail
   if params[:commit] == 'Cancel'
     redirect_to login_path
   else
     @user = User.find_by_email(params[:email])
     if @user.present?
        UserMailer.welcome(@user).deliver_now
        redirect_to login_path
      end
   end
 end

  def destroy
    session[:user_id] = nil
    flash[:success] = "logout_sucess"

    redirect_to login_path
  end

end
