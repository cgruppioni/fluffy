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

ActiveRecord::Schema.define(version: 20140826193401) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "adoptions", force: true do |t|
    t.integer  "user_id",                                                null: false
    t.integer  "animal_id",                                              null: false
    t.integer  "score",                  default: 50,                    null: false
    t.integer  "level",                  default: 1,                     null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "feed_counter",           default: 0,                     null: false
    t.datetime "last_time_fed",          default: '2014-08-26 19:26:47'
    t.datetime "last_time_played_with",  default: '2014-08-26 19:28:11'
    t.integer  "play_counter",           default: 0,                     null: false
    t.datetime "last_time_trained_with", default: '2014-08-26 19:30:09'
    t.integer  "train_counter",          default: 0,                     null: false
    t.datetime "last_time_slept",        default: '2014-08-26 19:32:20'
    t.integer  "sleep_counter",          default: 0,                     null: false
    t.integer  "next_level",             default: 500,                   null: false
    t.boolean  "only_once",              default: true,                  null: false
  end

  add_index "adoptions", ["animal_id"], name: "index_adoptions_on_animal_id", unique: true, using: :btree
  add_index "adoptions", ["user_id"], name: "index_adoptions_on_user_id", unique: true, using: :btree

  create_table "animals", force: true do |t|
    t.string   "name",                        null: false
    t.string   "mammal_type",                 null: false
    t.integer  "age",                         null: false
    t.string   "breed",                       null: false
    t.string   "personality",                 null: false
    t.text     "biography",                   null: false
    t.integer  "user_id",                     null: false
    t.boolean  "adopted",     default: false, null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "image"
  end

  add_index "animals", ["adopted"], name: "index_animals_on_adopted", using: :btree
  add_index "animals", ["mammal_type"], name: "index_animals_on_mammal_type", using: :btree
  add_index "animals", ["user_id"], name: "index_animals_on_user_id", using: :btree

  create_table "payments", force: true do |t|
    t.string   "stripe_customer_token", default: "", null: false
    t.integer  "credits",               default: 0,  null: false
    t.integer  "user_id",                            null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "payments", ["user_id"], name: "index_payments_on_user_id", using: :btree

  create_table "users", force: true do |t|
    t.string   "email",                         null: false
    t.string   "password_digest",               null: false
    t.string   "role",                          null: false
    t.string   "name",                          null: false
    t.string   "address",         default: ""
    t.string   "phone_number",    default: ""
    t.string   "facility_type",   default: ""
    t.text     "description",     default: ""
    t.string   "primary_contact", default: ""
    t.float    "latitude",        default: 0.0
    t.float    "longitude",       default: 0.0
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "credits",         default: 0,   null: false
  end

  add_index "users", ["address"], name: "index_users_on_address", using: :btree
  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["name", "address"], name: "index_users_on_name_and_address", unique: true, using: :btree
  add_index "users", ["role"], name: "index_users_on_role", using: :btree

end
