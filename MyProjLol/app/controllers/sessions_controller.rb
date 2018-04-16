class SessionsController < ApplicationController
  skip_before_action :authorize
  def new; end

  def create
    user = User.find_by(name: params[:name])
    if user && user.authenticate(params[:password])
      if user.email_confirmed
      session[:user_id] = user.id
      case user.user_type
      when 'GOVT'
        redirect_to govt_index_url, notice: "GOVT user's page"
      when 'COMMON-USER'
        redirect_to com_man_index_url, notice: "COMMON user's page"
      when 'PHARMA-COMPANY'
        redirect_to company_index_url, notice: "COMPANY user's page"
      end
      else
        redirect_to login_url, alert: 'Please activate your account by following
the instructions in the account confirmation email you received to proceed'
      end
    else
      redirect_to login_url, alert: 'Invalid user name or password'
    end
  end

  def destroy
    User.find(session[:user_id])
    session[:user_id] = nil
    redirect_to login_url, alert: 'Successfully logged out'
  end
end
