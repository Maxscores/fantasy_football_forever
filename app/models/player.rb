class Player < ApplicationRecord
  validates_presence_of :active,
                        :jersey,
                        :last_name,
                        :first_name,
                        :display_name,
                        :pro_team,
                        :position,
                        :height,
                        :weight,
                        :dob,
                        :college

  belongs_to :fantasy_team
end
