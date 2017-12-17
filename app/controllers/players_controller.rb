class PlayersController < ApplicationController
  before_action :set_player, only: [:show]

  def index
    @players = Player.all
  end

  def show
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
                                      :college)
    end

    def set_player
      @player = Player.find(params[:id])
    end

end
