# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_06_06_105541) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "activities", force: :cascade do |t|
    t.string "name"
  end

  create_table "activity_places", force: :cascade do |t|
    t.bigint "place_id"
    t.bigint "activity_id"
    t.index ["activity_id"], name: "index_activity_places_on_activity_id"
    t.index ["place_id"], name: "index_activity_places_on_place_id"
  end

  create_table "favorites_places", force: :cascade do |t|
    t.bigint "place_id"
    t.bigint "user_id"
    t.index ["place_id"], name: "index_favorites_places_on_place_id"
    t.index ["user_id"], name: "index_favorites_places_on_user_id"
  end

  create_table "places", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.string "accessibility"
    t.string "schedules"
    t.string "pictures"
    t.float "longitude"
    t.float "latitude"
  end

  create_table "reviews", force: :cascade do |t|
    t.text "content"
    t.integer "rating"
    t.bigint "place_id"
    t.bigint "user_id"
    t.index ["place_id"], name: "index_reviews_on_place_id"
    t.index ["user_id"], name: "index_reviews_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "avatar"
    t.string "username"
    t.string "firstname"
    t.string "lastname"
    t.string "address"
    t.string "tel"
    t.string "birth_date"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "activity_places", "activities"
  add_foreign_key "activity_places", "places"
  add_foreign_key "favorites_places", "places"
  add_foreign_key "favorites_places", "users"
  add_foreign_key "reviews", "places"
  add_foreign_key "reviews", "users"
end
