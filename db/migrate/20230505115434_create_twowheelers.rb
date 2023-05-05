class CreateTwowheelers < ActiveRecord::Migration[7.0]
  def change
    create_table :twowheelers do |t|
      t.string :name
      t.text :description
      t.string :image_url
      t.decimal :price
      t.integer :model_year
      t.string :engine_type
      t.string :fuel_type

      t.timestamps
    end
  end
end
