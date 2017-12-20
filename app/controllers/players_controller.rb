class PlayersController < ApplicationController
  before_action :set_player, only: [:show]

  def index
    @user_favorites = UserFavorite.all.where(user_id: current_user.id).includes(:players)
    @fantasy_teams = FantasyTeam.all
    filter
    sort_collection
  end

  def show
  end

  private
    def set_player
      @player = Player.find(params[:id])
    end

    def filter
      @players = Player.all.includes(:fantasy_team)

      @players = @players.where(position: params[:position]) if params[:position] && params[:position] != ""
      @players = @players.where(fantasy_team_id: params[:team].to_i) if params[:team] && params[:team] != ""
      @players = @players.paginate(:page => params[:page], :per_page => 15)
    end

    def sort_collection
      if params[:sort]
        @players = @players.order(params[:sort])
      else
        @player = @players.order("display_name ASC")
      end
    end

end
