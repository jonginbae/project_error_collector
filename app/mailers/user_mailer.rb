class UserMailer < ApplicationMailer

  default from: "beset0610@naver.com"

  def welcome(user)
    @user = user
    mail(:to=>  @user.email, :subject => 'Hi! here is your password!')
  end
end
