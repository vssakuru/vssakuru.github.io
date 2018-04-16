class GovtController < ApplicationController
  def index
  end
  def destroy
    session[:user_id] = nil
    redirect_to login_url, alert: "Successfully logged out"
  end
end
