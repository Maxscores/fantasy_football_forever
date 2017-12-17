class FantasyTeamsController < ApplicationController
  before_action :set_fantasy_team, only: [:show, :edit, :update, :destroy]

  def index
    @fantasy_teams = FantasyTeam.all.where.not(name: "Free Agents")
  end

  def show
  end

  def new
    @fantasy_team = FantasyTeam.new
  end

  def create
    @fantasy_team = FantasyTeam.new(fantasy_team_params)
    if @fantasy_team.save
      redirect_to fantasy_team_path(@fantasy_team)
    else
      render :new
    end
  end

  def edit
  end

  def update
    @fantasy_team.update(fantasy_team_params)
    if @fantasy_team.save
      redirect_to fantasy_team_path(@fantasy_team)
    else
      render :edit
    end
  end

  def destroy
    @fantasy_team.destroy
    redirect_to fantasy_teams_path
  end

  private
    def fantasy_team_params
      params.require(:fantasy_team).permit(:name, :owner)
    end

    def set_fantasy_team
      @fantasy_team = FantasyTeam.find(params[:id])
    end
end
