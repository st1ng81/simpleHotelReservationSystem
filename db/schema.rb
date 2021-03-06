# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20160322093849) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bookings", force: :cascade do |t|
    t.integer  "lodge_id"
    t.date     "checkin_date",   null: false
    t.time     "checkin_time",   null: false
    t.date     "checout_date"
    t.time     "checkout_time",  null: false
    t.float    "total_amount",   null: false
    t.integer  "no_of_days"
    t.integer  "adult_count"
    t.integer  "children_count"
    t.string   "status"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.integer  "room_id",        null: false
  end

  add_index "bookings", ["lodge_id"], name: "index_bookings_on_lodge_id", using: :btree

  create_table "lodges", force: :cascade do |t|
    t.string   "name"
    t.text     "address"
    t.string   "landline"
    t.string   "mobile"
    t.string   "manager_name"
    t.string   "manager_phone"
    t.boolean  "active"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "room_types", force: :cascade do |t|
    t.integer  "total_rooms"
    t.string   "room_type"
    t.integer  "lodge_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "room_types", ["lodge_id"], name: "index_room_types_on_lodge_id", using: :btree

  create_table "rooms", force: :cascade do |t|
    t.string   "room_number"
    t.integer  "lodge_id"
    t.integer  "room_type_id"
    t.integer  "room_occupants"
    t.integer  "room_extra_occupants"
    t.float    "room_extra_bed_charge"
    t.float    "room_rate"
    t.float    "room_extra_person_charge"
    t.boolean  "active"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  add_index "rooms", ["lodge_id"], name: "index_rooms_on_lodge_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "first_name"
    t.string   "last_name"
    t.text     "address"
    t.string   "mobile"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
