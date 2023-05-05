class Reservation < ApplicationRecord
  belongs to :twowheeler
  belongs to :user
end
