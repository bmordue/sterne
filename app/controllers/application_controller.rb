class ApplicationController < ActionController::Base
  protect_from_forgery
  force_ssl

  private 
  
  def current_user
     @current_user ||= Player.find(session[:user_id]) if session[:user_id]
  end

  helper_method :current_user

  def authenticate_user!
    if current_user.nil?
       redirect_to login_url, :alert => "Please log in to continue"
    end
  end


end
