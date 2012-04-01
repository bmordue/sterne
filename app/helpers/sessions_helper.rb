module SessionsHelper
 
  def deny_access
    redirect_to log_in_path, :notice => "Please log in to view this page"
  end

  def signed_in?
    !current_user.nil?
  end

end
