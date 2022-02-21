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

ActiveRecord::Schema.define(version: 2022_02_20_205759) do

  create_table "car_locations", force: :cascade do |t|
    t.string "state"
    t.decimal "lat"
    t.string "long"
    t.string "region"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "car_models", force: :cascade do |t|
    t.integer "year"
    t.string "manufacturer"
    t.string "modelnumber"
    t.integer "cylinders"
    t.string "fueltype"
    t.string "drive"
    t.string "carbodytype"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "car_sales", force: :cascade do |t|
    t.decimal "price"
    t.integer "odometer"
    t.string "condition"
    t.string "VIN"
    t.text "description"
    t.string "transmission"
    t.integer "car_seller_id", null: false
    t.integer "car_model_id", null: false
    t.integer "car_location_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["car_location_id"], name: "index_car_sales_on_car_location_id"
    t.index ["car_model_id"], name: "index_car_sales_on_car_model_id"
    t.index ["car_seller_id"], name: "index_car_sales_on_car_seller_id"
  end

  create_table "car_sellers", force: :cascade do |t|
    t.string "name"
    t.integer "age"
    t.text "phoneNumber"
    t.text "email"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "loactions", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "locations", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "models", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "pages", force: :cascade do |t|
    t.string "title"
    t.text "content"
    t.string "permlink"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "sellers", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "car_sales", "car_locations"
  add_foreign_key "car_sales", "car_models"
  add_foreign_key "car_sales", "car_sellers"
end
