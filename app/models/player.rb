class Player < ApplicationRecord
  validates_presence_of :active,
                        :jersey,
                        :last_name,
                        :first_name,
                        :display_name,
                        :twitter_handle,
                        :pro_team,
                        :position,
                        :height,
                        :weight,
                        :dob,
                        :college

  belongs_to :fantasy_team
  has_many :season_stats, :dependent => :destroy
  has_many :user_favorites, :dependent => :destroy
  has_many :users, through: :user_favorites

  def current_season_points
    season_points ||= season_stats.last.points_scored
  end
end
