class UserFavoritesController < ApplicationController
  def create
    favorite = UserFavorite.new(player_id: params[:player_id], user_id: current_user.id)
    if favorite.save
      redirect_to players_path({:page => params[:page], :team => params[:team], :position => params[:position]})
    end
  end

  def destroy
    favorite = UserFavorite.find_by(player_id: params[:player_id], user_id: current_user.id)
    favorite.destroy
    redirect_to players_path({:page => params[:page], :team => params[:team], :position => params[:position]})
  end
end
