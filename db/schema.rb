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

ActiveRecord::Schema.define(version: 2019_11_12_093849) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "rents", force: :cascade do |t|
    t.date "date"
    t.bigint "user_id"
    t.bigint "tiny_house_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["tiny_house_id"], name: "index_rents_on_tiny_house_id"
    t.index ["user_id"], name: "index_rents_on_user_id"
  end

  create_table "tiny_houses", force: :cascade do |t|
    t.bigint "owner_id"
    t.string "title"
    t.string "location"
    t.integer "travellers_number"
    t.integer "price"
    t.string "description"
    t.integer "bed_number"
    t.integer "bedroom_number"
    t.string "wifi"
    t.string "kitchen"
    t.string "sauna"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["owner_id"], name: "index_tiny_houses_on_owner_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
    t.integer "telephon"
    t.string "description"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "rents", "tiny_houses"
  add_foreign_key "rents", "users"
  add_foreign_key "tiny_houses", "users", column: "owner_id"
end
