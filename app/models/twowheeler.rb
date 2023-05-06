class Twowheeler < ApplicationRecord
   
  has_many :reservations
  has_many :users, through: :reservations

  validates :name, presence: true
  validates :description, presence: true
  validates :image_url, presence: true
  validates :price, presence: true
  validates :model_year, presence: true
  validates :engine_type, presence: true
  validates :fuel_type, presence: true
  
end

