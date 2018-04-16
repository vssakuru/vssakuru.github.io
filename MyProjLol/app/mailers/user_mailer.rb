class UserMailer < ApplicationMailer
  default from: 'vsakur2@gmail.com'

  def welcome_email(user)
    @user = user
    mail(to: @user.email, subject: 'Welcome Email')
  end

  def registration_confirmation(user)
    @user = user
    mail(to: @user.email, subject: 'Registration Confirmation')
  end

end
