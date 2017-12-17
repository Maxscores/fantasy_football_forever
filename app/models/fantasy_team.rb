class FantasyTeam < ApplicationRecord
  validates_presence_of :name, :owner
  has_many :players

end
