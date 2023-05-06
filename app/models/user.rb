class User < ApplicationRecord
 
  # validation
  validates :name, length: { in: 5..30 }
  
  # Associations
  has_many :reservations
  has_many :twowheelers, through: :reservations
end
