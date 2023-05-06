class Reservation < ApplicationRecord
  belongs_to :twowheeler
  belongs_to :user

  belongs_to :user, class_name: 'User'
  belongs_to :twowheeler, class_name: 'Twowheeler'

  validates :user_id, presence: true
  validates :twowheeler_id, presence: true
  validates :city, presence: true
  validates :duration_of_test_drive, presence: true
  validates :date_of_reservation, presence: true
end
