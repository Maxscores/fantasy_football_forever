class CreatePlayerSeasonStats < ActiveRecord::Migration[5.1]
  def change
    add_reference :season_stats, :player, foreign_key: true
  end
end
