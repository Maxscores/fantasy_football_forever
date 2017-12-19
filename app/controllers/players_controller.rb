class PlayersController < ApplicationController
  before_action :set_player, only: [:show]

  def index
    @fantasy_teams = FantasyTeam.all
    if params[:position]
      @players = Player.where(position: params[:position]).order("display_name ASC").paginate(:page => params[:page], :per_page => 30)
    elsif params[:team]
      @players = Player.where(fantasy_team_id: params[:team].to_i).order("display_name ASC").paginate(:page => params[:page], :per_page => 30)
    else
      @players = Player.order("display_name ASC").paginate(:page => params[:page], :per_page => 30)
    end
  end

  def show
  end

  private
    def set_player
      @player = Player.find(params[:id])
    end

end
