class UserFavoritesController < ApplicationController
  def create
    UserFavorite.create(player_id: params[:player_id], user_id: current_user.id)
    if params[:path] == "/players"
      redirect_to players_path(filter_params)
    elsif params[:path].include?("/players/")
      redirect_to player_path(Player.find(params[:player_id]))
    end
  end

  def destroy
    favorite = UserFavorite.find_by(player_id: params[:player_id], user_id: current_user.id)
    favorite.destroy
    if params[:path] == "/players"
      redirect_to players_path(filter_params)
    elsif params[:path] == "/players/1"
      redirect_to player_path(Player.find(params[:player_id]))
    end
  end

  def create_many
    Player.where(fantasy_team_id: params[:fantasy_team_id]).each do |player|
      current_user.players << player if !current_user.players.include?(player)
    end
    flash.alert = "All Players added to Favorites"
    redirect_to fantasy_team_path(FantasyTeam.find(params[:fantasy_team_id]))
  end
end
