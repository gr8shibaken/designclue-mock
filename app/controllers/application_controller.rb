class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :authenticate
  helper_method :signed_in
  
  USERNAME = "admin"
  PASSWORD = "purplecow"

  protected
  def authenticate
    authenticate_or_request_with_http_basic do |name,password|
      (@name = name) == USERNAME && password == PASSWORD
      end
  end
  def signed_in
    session[:user_id].present?
  end
end
