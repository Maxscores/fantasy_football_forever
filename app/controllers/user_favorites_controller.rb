class UserFavoritesController < ApplicationController
  def create
    favorite = UserFavorite.new(player_id: params[:player_id], user_id: current_user.id)
    if favorite.save
      redirect_to players_path(filter_params)
    end
  end

  def destroy
    favorite = UserFavorite.find_by(player_id: params[:player_id], user_id: current_user.id)
    favorite.destroy
    if params[:view] == "show"
      redirect_to user_path(current_user)
    else
      redirect_to players_path(filter_params)
    end
  end
end
