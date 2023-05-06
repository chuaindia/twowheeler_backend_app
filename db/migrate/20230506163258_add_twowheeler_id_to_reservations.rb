class AddTwowheelerIdToReservations < ActiveRecord::Migration[7.0]
  def change
    add_column :reservations, :twowheeler_id, :integer
  end
end
