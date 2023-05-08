class Twowheeler < ApplicationRecord
   
  has_many :users, through: :reservations
  has_many :reservations, dependent: :destroy

  validates :name, presence: true
  validates :description, presence: true
  validates :image_url, presence: true
  validates :price, presence: true
  validates :model_year, presence: true
  validates :engine_type, presence: true
  validates :fuel_type, presence: true
  
end

