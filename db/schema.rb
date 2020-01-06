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

ActiveRecord::Schema.define(version: 2020_01_06_183325) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cities", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "email"
    t.bigint "city_id", null: false
    t.string "password_digest"
    t.string "bio"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["city_id"], name: "index_users_on_city_id"
  end

  create_table "walls", force: :cascade do |t|
    t.string "name"
    t.bigint "city_id", null: false
    t.string "area"
    t.string "description"
    t.string "weekday_opening"
    t.string "weekday_closing"
    t.string "weekend_opening"
    t.string "weekend_closing"
    t.string "website_url"
    t.string "image_url"
    t.boolean "bouldering_only"
    t.string "address_line_1"
    t.string "address_line_2"
    t.string "address_line_3"
    t.string "postcode"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["city_id"], name: "index_walls_on_city_id"
  end

  add_foreign_key "users", "cities"
  add_foreign_key "walls", "cities"
end
