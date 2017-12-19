class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  helper_method :current_user
  helper_method :logged_in?
  helper_method :current_admin?

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def logged_in?
    if !current_user || current_user.id != params[:id].to_i
      flash.notice = "You must be signed in to do that"
      redirect_to root_path
    end
  end

  def current_admin?
    current_user && current_user.admin?
  end
end
