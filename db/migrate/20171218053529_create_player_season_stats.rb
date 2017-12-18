class CreatePlayerSeasonStats < ActiveRecord::Migration[5.1]
  def change
    create_table :player_season_stats do |t|
      t.references :season_stats
      t.references :players
    end
  end
end
