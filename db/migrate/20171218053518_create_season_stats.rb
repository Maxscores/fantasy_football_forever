class CreateSeasonStats < ActiveRecord::Migration[5.1]
  def change
    create_table :season_stats do |t|
      t.string :season
      t.integer :games_played
      t.integer :completions
      t.integer :attempts
      t.float :completion_percentage
      t.integer :passing_yards
      t.float :average_yards_per_attempt
      t.integer :passing_touchdowns
      t.integer :interceptions
      t.integer :fumbles
      t.integer :rushing_attempts
      t.integer :rushing_yards
      t.integer :average_yards_per_carry
      t.integer :rushing_touchdowns
      t.integer :pass_receptions
      t.integer :receiving_yards
      t.float :average_yards_per_reception
      t.integer :receiving_touchdowns
      t.integer :field_goals_made
      t.integer :field_goals_attempted
      t.float :field_goal_percentage
      t.float :extra_point_percentage
      t.integer :extra_point_made
      t.integer :extra_point_attempted
    end
  end
end
