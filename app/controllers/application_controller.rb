class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  helper_method :current_user
  helper_method :logged_in?
  helper_method :current_admin?
  helper_method :fantasy_teams_drop_down
  helper_method :sort_methods
  helper_method :filter_params
  helper_method :default_images

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

  def fantasy_teams_drop_down
    teams = FantasyTeam.all.map {|team| [team.name, team.id]}
    teams.unshift([""])
  end

  def sort_methods
    [
      ["First Name A-Z", "first_name ASC"],
      ["First Name Z-A", "first_name DESC"],
      ["Last Name A-Z", "last_name ASC"],
      ["Last Name Z-A", "last_name DESC"]
    ]
  end

  def filter_params
    {:page => params[:page],
     :team => params[:team],
     :position => params[:position],
     :sort => params[:sort]}
  end

  def default_images
    ["boba_fett.jpg",
      "darth_vader.jpeg",
      "jigglypuff.jpg",
      "pirate.jpeg",
      "stormtrooper.jpg",
      "yoda.jpg"]
  end
end
