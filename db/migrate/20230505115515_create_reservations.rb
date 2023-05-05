class CreateReservations < ActiveRecord::Migration[7.0]
  def change
    create_table :reservations do |t|
      t.string :city
      t.integer :duration_of_test_drive
      t.date :date_of_reservation

      t.timestamps
    end
  end
end
