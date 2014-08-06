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

ActiveRecord::Schema.define(version: 20140806221748) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "users", force: true do |t|
    t.string   "email",                        null: false
    t.string   "password_digest",              null: false
    t.string   "role",                         null: false
    t.string   "name",                         null: false
    t.string   "zipcode",                      null: false
    t.string   "address",         default: ""
    t.string   "phone_number",    default: ""
    t.string   "facility_type",   default: ""
    t.text     "description",     default: ""
    t.string   "primary_contact", default: ""
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["name", "zipcode"], name: "index_users_on_name_and_zipcode", unique: true, using: :btree
  add_index "users", ["role"], name: "index_users_on_role", using: :btree
  add_index "users", ["zipcode"], name: "index_users_on_zipcode", using: :btree

end
