class Reservation < ApplicationRecord
  belongs_to :twowheeler
  belongs_to :user

  belongs_to :user
  belongs_to :twowheeler
 
  validates :city, presence: true
  validates :duration_of_test_drive, presence: true
  validates :date_of_reservation, presence: true
end
