class AddUserIdToReservations < ActiveRecord::Migration[7.0]
  def change
    add_column :reservations, :user_id, :integer
  end
end
