class SessionsController < ApplicationController
  def new
    if signed_in
      redirect_to mock_top_path
    end
  end
  def create
    session[:user_id] = 1
    redirect_to mock_top_path
  end
  def destroy
    session[:user_id] = nil
    redirect_to root_path
  end

end
