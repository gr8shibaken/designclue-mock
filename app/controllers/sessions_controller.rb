class SessionsController < ApplicationController
  def new
    @navigation = true
    if signed_in
      redirect_to mock_top_path
    end
  end
  def create
#    user = Mock::User.find_by_name(params[:user_name])
#    session[:user_id] = user.id
    user = User.find_by_username(params[:user_name])    
    if user
      session[:user_id] = user.id
      if params[:callback] == 'post'
        redirect_to mock_job_post_2_path
      else
        redirect_to mock_top_path
      end
    else 
      redirect_to mock_top_path
    end
  end
  def destroy
    session[:user_id] = nil
    redirect_to root_path
  end
end
