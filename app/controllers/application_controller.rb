class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :authenticate
  helper_method :signed_in, :current_user
  
  USERNAME = "admin"
  PASSWORD = "purplecow"

  protected
  def authenticate
    authenticate_or_request_with_http_basic do |name,password|
      (@name = name) == USERNAME && password == PASSWORD
      end
  end
  def signed_in
    session[:user_id]
  end
  def current_user
    @current_user ||= Mock::User.find(session[:user_id].to_i)
  end
  def current_user=(user)
    @current_user = user
    session[:user_id] = user.id
  end
end
