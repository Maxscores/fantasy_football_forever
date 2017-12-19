class SeasonStat < ApplicationRecord
  belongs_to :player
  validates_presence_of  :games_played,
                         :completions,
                         :completion_percentage,
                         :attempts,
                         :passing_yards ,
                         :average_yards_per_attempt,
                         :passing_touchdowns,
                         :interceptions,
                         :fumbles,
                         :rushing_attempts,
                         :rushing_yards,
                         :average_yards_per_carry,
                         :rushing_touchdowns,
                         :pass_receptions,
                         :receiving_yards,
                         :average_yards_per_reception,
                         :receiving_touchdowns,
                         :field_goals_made,
                         :field_goals_attempted,
                         :field_goal_percentage,
                         :extra_point_made,
                         :extra_point_attempted,
                         :extra_point_percentage,
                         :player_id,
                         :season

end
