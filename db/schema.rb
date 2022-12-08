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

ActiveRecord::Schema.define(version: 2022_12_03_202008) do

  create_table "drivers", force: :cascade do |t|
    t.string "name"
    t.integer "age"
    t.string "country"
    t.string "car"
    t.string "bio"
    t.string "username"
    t.string "password_digest"
    t.boolean "admin"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "time_trials", force: :cascade do |t|
    t.integer "track_id", null: false
    t.integer "driver_id", null: false
    t.float "Lap_Time"
    t.string "date"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["driver_id"], name: "index_time_trials_on_driver_id"
    t.index ["track_id"], name: "index_time_trials_on_track_id"
  end

  create_table "tracks", force: :cascade do |t|
    t.string "name"
    t.string "location"
    t.string "length"
    t.string "year_of_construction"
    t.string "history"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "time_trials", "drivers"
  add_foreign_key "time_trials", "tracks"
end
