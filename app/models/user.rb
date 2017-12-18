class User < ApplicationRecord
  validates :email, presence: true, uniqueness: true
  has_secure_password
  has_many :user_favorites
  has_many :players, through: :user_favorites
end
