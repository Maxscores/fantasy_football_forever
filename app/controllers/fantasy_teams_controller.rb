class FantasyTeamsController < ApplicationController
  before_action :set_fantasy_team, only: [:show]

  def index
    @fantasy_teams = FantasyTeam.where.not(name: "Free Agents")
  end

  def show
  end



  private
    def fantasy_team_params
      params.require(:fantasy_team).permit(:name, :owner)
    end

    def set_fantasy_team
      @fantasy_team = FantasyTeam.find(params[:id])
    end
end
