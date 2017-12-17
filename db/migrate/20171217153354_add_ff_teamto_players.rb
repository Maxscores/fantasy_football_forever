class AddFfTeamtoPlayers < ActiveRecord::Migration[5.1]
  def change
    add_reference :players, :ff_team, foreign_key: true
  end
end 
