class PlayersController < ApplicationController
  before_action :set_player, only: [:show]

  def index
    if params[:sort] == "fantasy_team"
      @players = Player.all.order("fantasy_team_id DESC").paginate(:page => params[:page], :per_page => 30)
    else
      @players = Player.paginate(:page => params[:page], :per_page => 30)
    end
  end

  def show
  end

  private
    def set_player
      @player = Player.find(params[:id])
    end

end
