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

ActiveRecord::Schema.define(version: 2019_08_22_145739) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "ambiances", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "apero_ambiances", force: :cascade do |t|
    t.bigint "apero_id"
    t.bigint "ambiance_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["ambiance_id"], name: "index_apero_ambiances_on_ambiance_id"
    t.index ["apero_id"], name: "index_apero_ambiances_on_apero_id"
  end

  create_table "aperos", force: :cascade do |t|
    t.string "description"
    t.string "place"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "photo"
    t.string "title"
    t.decimal "capacity"
    t.datetime "date"
    t.float "latitude"
    t.float "longitude"
    t.index ["user_id"], name: "index_aperos_on_user_id"
  end

  create_table "bookings", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "apero_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["apero_id"], name: "index_bookings_on_apero_id"
    t.index ["user_id"], name: "index_bookings_on_user_id"
  end

  create_table "reviews", force: :cascade do |t|
    t.string "content"
    t.decimal "rating"
    t.bigint "user_id"
    t.bigint "apero_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["apero_id"], name: "index_reviews_on_apero_id"
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
    t.string "first_name"
    t.string "last_name"
    t.string "location"
    t.string "drinks"
    t.string "photo"
    t.string "username"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "apero_ambiances", "ambiances"
  add_foreign_key "apero_ambiances", "aperos"
  add_foreign_key "aperos", "users"
  add_foreign_key "bookings", "aperos"
  add_foreign_key "bookings", "users"
  add_foreign_key "reviews", "aperos"
  add_foreign_key "reviews", "users"
end
