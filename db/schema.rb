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

ActiveRecord::Schema.define(version: 20160320055654) do

  create_table "attendances", force: :cascade do |t|
    t.integer  "user_id",    limit: 4
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
    t.integer  "mine_id",    limit: 4
    t.integer  "tunnel_id",  limit: 4
  end

  add_index "attendances", ["mine_id"], name: "index_attendances_on_mine_id", using: :btree
  add_index "attendances", ["tunnel_id"], name: "index_attendances_on_tunnel_id", using: :btree
  add_index "attendances", ["user_id"], name: "index_attendances_on_user_id", using: :btree

  create_table "expense_types", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "expenses", force: :cascade do |t|
    t.datetime "created_at",                                  null: false
    t.datetime "updated_at",                                  null: false
    t.float    "amount",      limit: 53
    t.string   "name",        limit: 255
    t.integer  "quantity",    limit: 4
    t.string   "unit",        limit: 255
    t.string   "description", limit: 255
    t.string   "category",    limit: 255
    t.string   "status",      limit: 255, default: "pending"
    t.integer  "user_id",     limit: 4
    t.integer  "mine_id",     limit: 4
    t.float    "total",       limit: 53
  end

  add_index "expenses", ["mine_id"], name: "index_expenses_on_mine_id", using: :btree
  add_index "expenses", ["user_id"], name: "index_expenses_on_user_id", using: :btree

  create_table "miners", force: :cascade do |t|
    t.string   "first_name",    limit: 255
    t.string   "last_name",     limit: 255
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
    t.integer  "mine_id",       limit: 4
    t.string   "address",       limit: 255
    t.string   "mobile_number", limit: 255
  end

  add_index "miners", ["mine_id"], name: "index_miners_on_mine_id", using: :btree

  create_table "mines", force: :cascade do |t|
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
    t.string   "name",        limit: 255
    t.integer  "user_id",     limit: 4
    t.string   "description", limit: 255
  end

  add_index "mines", ["user_id"], name: "index_mines_on_user_id", using: :btree

  create_table "mining_operations", force: :cascade do |t|
    t.float    "import_count",   limit: 53
    t.float    "export_count",   limit: 53
    t.string   "export_unit",    limit: 255
    t.string   "import_unit",    limit: 255
    t.string   "status",         limit: 255
    t.string   "stash",          limit: 255
    t.string   "stash_name",     limit: 255
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
    t.string   "operation_type", limit: 255
    t.integer  "mine_id",        limit: 4
    t.integer  "tunnel_id",      limit: 4
  end

  add_index "mining_operations", ["mine_id"], name: "index_mining_operations_on_mine_id", using: :btree
  add_index "mining_operations", ["tunnel_id"], name: "index_mining_operations_on_tunnel_id", using: :btree

  create_table "roles", force: :cascade do |t|
    t.string   "name",          limit: 255
    t.integer  "resource_id",   limit: 4
    t.string   "resource_type", limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "roles", ["name", "resource_type", "resource_id"], name: "index_roles_on_name_and_resource_type_and_resource_id", using: :btree
  add_index "roles", ["name"], name: "index_roles_on_name", using: :btree

  create_table "stored_units", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "team_members", force: :cascade do |t|
    t.integer  "user_id",    limit: 4
    t.integer  "team_id",    limit: 4
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  add_index "team_members", ["team_id"], name: "index_team_members_on_team_id", using: :btree
  add_index "team_members", ["user_id"], name: "index_team_members_on_user_id", using: :btree

  create_table "teams", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "tunnel_expenses", force: :cascade do |t|
    t.integer  "tunnel_id",  limit: 4
    t.integer  "expense_id", limit: 4
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  add_index "tunnel_expenses", ["expense_id"], name: "index_tunnel_expenses_on_expense_id", using: :btree
  add_index "tunnel_expenses", ["tunnel_id"], name: "index_tunnel_expenses_on_tunnel_id", using: :btree

  create_table "tunnels", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.integer  "mine_id",    limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_index "tunnels", ["mine_id"], name: "index_tunnels_on_mine_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "email",                  limit: 255, default: "", null: false
    t.string   "encrypted_password",     limit: 255, default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,   default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.datetime "created_at",                                      null: false
    t.datetime "updated_at",                                      null: false
    t.string   "first_name",             limit: 255
    t.string   "last_name",              limit: 255
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  create_table "users_roles", id: false, force: :cascade do |t|
    t.integer "user_id", limit: 4
    t.integer "role_id", limit: 4
  end

  add_index "users_roles", ["user_id", "role_id"], name: "index_users_roles_on_user_id_and_role_id", using: :btree

  add_foreign_key "attendances", "mines"
  add_foreign_key "attendances", "tunnels"
  add_foreign_key "attendances", "users"
  add_foreign_key "expenses", "mines"
  add_foreign_key "expenses", "users"
  add_foreign_key "miners", "mines"
  add_foreign_key "mines", "users"
  add_foreign_key "mining_operations", "mines"
  add_foreign_key "mining_operations", "tunnels"
  add_foreign_key "team_members", "teams"
  add_foreign_key "team_members", "users"
  add_foreign_key "tunnel_expenses", "expenses"
  add_foreign_key "tunnel_expenses", "tunnels"
  add_foreign_key "tunnels", "mines"
end
