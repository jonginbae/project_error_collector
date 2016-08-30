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
   @user = User.find_by_email(params[:email])

   respond_to do |format|
    if @user.present?
      binding.pry
      # Tell the UserMailer to send a welcome email after save
      UserMailer.welcome_email(@user).deliver_now

      format.html { redirect_to( login_path) }
      format.json { render json: @user, status: :created, location: @user }
    else
      format.html { render action: 'new' }
      format.json { render json: @user.errors, status: :unprocessable_entity }
    end
  end
 end

  def destroy
    session[:user_id] = nil
    flash[:scucess] = "logout_sucess"

    redirect_to login_path
  end

end
