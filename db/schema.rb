ActiveRecord::Schema.define(version: 20140421095211) do

  create_table "teams", force: true do |t|
    t.string   "name"
    t.string   "description"
    t.integer  "id_leader"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "name"
    t.datetime "birthday"
    t.string   "email"
    t.boolean  "role"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "password_digest"
    t.string   "remember_token"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["remember_token"], name: "index_users_on_remember_token", using: :btree

end
