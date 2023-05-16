# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2023_05_15_172155) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "reservations", force: :cascade do |t|
    t.integer "user_id"
    t.integer "twowheeler_id"
    t.string "city"
    t.date "date"
    t.string "hour"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["twowheeler_id", "date", "hour"], name: "index_reservations_on_twowheeler_id_and_date_and_hour", unique: true
  end

  create_table "twowheelers", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.string "image_url"
    t.integer "price"
    t.integer "model_year"
    t.string "engine_type"
    t.string "fuel_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["username"], name: "index_users_on_username", unique: true
  end

  add_foreign_key "reservations", "twowheelers", on_delete: :cascade
  add_foreign_key "reservations", "users", on_delete: :cascade
end
