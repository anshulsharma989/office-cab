# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_11_07_060131) do

  create_table "cab_riders", force: :cascade do |t|
    t.integer "cab_id", null: false
    t.integer "rider_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["cab_id"], name: "index_cab_riders_on_cab_id"
    t.index ["rider_id"], name: "index_cab_riders_on_rider_id"
  end

  create_table "cabs", force: :cascade do |t|
    t.integer "car_id", null: false
    t.integer "driver_id", null: false
    t.string "location"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["car_id"], name: "index_cabs_on_car_id"
    t.index ["driver_id"], name: "index_cabs_on_driver_id"
  end

  create_table "cars", force: :cascade do |t|
    t.string "model"
    t.string "number"
    t.string "year"
    t.integer "capacity"
    t.string "color"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "drivers", force: :cascade do |t|
    t.string "name"
    t.string "mobile_number"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "riders", force: :cascade do |t|
    t.string "name"
    t.string "mobile_number"
    t.string "location"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "cab_riders", "cabs"
  add_foreign_key "cab_riders", "riders"
  add_foreign_key "cabs", "cars"
  add_foreign_key "cabs", "drivers"
end
