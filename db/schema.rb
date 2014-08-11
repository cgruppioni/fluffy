ActiveRecord::Schema.define(version: 20140809200254) do
  enable_extension "plpgsql"
  create_table "adoptions", force: true do |t|
    t.integer  "user_id",                 null: false
    t.integer  "animal_id",               null: false
    t.integer  "score",      default: 50, null: false
    t.integer  "level",      default: 1,  null: false
    t.datetime "created_at"
    t.datetime "updated_at"
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
  end
  add_index "animals", ["adopted"], name: "index_animals_on_adopted", using: :btree
  add_index "animals", ["mammal_type"], name: "index_animals_on_mammal_type", using: :btree
  add_index "animals", ["user_id"], name: "index_animals_on_user_id", using: :btree
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
  end
  add_index "users", ["address"], name: "index_users_on_address", using: :btree
  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["name", "address"], name: "index_users_on_name_and_address", unique: true, using: :btree
  add_index "users", ["role"], name: "index_users_on_role", using: :btree
end
