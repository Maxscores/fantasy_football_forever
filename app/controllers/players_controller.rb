class PlayersController < ApplicationController
  before_action :set_player, only: [:show, :edit, :update, :destroy]

  def index
    @players = Player.paginate(:page => params[:page], :per_page => 30)
  end

  def show
  end

  def new
    @player = Player.new
    @fantasy_teams = FantasyTeam.all
  end

  def create
    @player = Player.new(player_params)
    if @player.save
      redirect_to player_path(@player)
    else
      render :new
    end
  end

  def edit
    @fantasy_teams = FantasyTeam.all
  end

  def update
    @player.update(player_params)
    if @player.save
      redirect_to player_path(@player)
    else
      render :edit
    end
  end

  def destroy
    @player.destroy
    redirect_to players_path
  end

  private
    def player_params
      params.require(:player).permit( :active,
                                      :jersey,
                                      :last_name,
                                      :first_name,
                                      :display_name,
                                      :pro_team,
                                      :position,
                                      :height,
                                      :weight,
                                      :dob,
                                      :college,
                                      :fantasy_team_id)
    end

    def set_player
      @player = Player.find(params[:id])
    end

end
