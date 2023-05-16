class Reservation < ApplicationRecord
  belongs_to :user
  belongs_to :twowheeler

  validates :user_id, presence: true
  validates :twowheeler_id, presence: true
  validates :date, presence: true
  validates :city, presence: true
  validates :hour, presence: true
  validates :twowheeler_id, uniqueness: { scope: %i[date hour] }
end
