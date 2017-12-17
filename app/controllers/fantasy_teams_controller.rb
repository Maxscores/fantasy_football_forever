class FantasyTeamsController < ApplicationController
  def index
    @fantasy_teams = FantasyTeam.all.where.not(name: "Free Agents")
  end

  private
    def fantasy_team_params
      params.require(:fantasy_team).permit(:name, :owner)
    end

end
