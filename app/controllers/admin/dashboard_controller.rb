class Admin::DashboardController < Admin::BaseController
  def index
    @fantasy_team = FantasyTeam.new()
    @player = Player.new()
  end
end
