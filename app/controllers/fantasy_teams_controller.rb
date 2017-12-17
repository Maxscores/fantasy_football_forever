class FantasyTeamsController < ApplicationController
  def index
    @fantasy_teams = FantasyTeam.all.where.not(name: "Free Agents")
  end

  def show
    @fantasy_team = FantasyTeam.find(params[:id])
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

  private
    def fantasy_team_params
      params.require(:fantasy_team).permit(:name, :owner)
    end

end
