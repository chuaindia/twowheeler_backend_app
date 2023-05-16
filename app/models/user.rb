class User < ApplicationRecord
  has_many :reservations
  has_many :twowheelers, through: :reservations
  validates :username, length: { in: 6..20 }
  validates :username, uniqueness: true
end
