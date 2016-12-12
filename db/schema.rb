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

ActiveRecord::Schema.define(version: 20161212013029) do

  create_table "attendances", force: :cascade do |t|
    t.integer  "user_id",         limit: 4
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
    t.integer  "mine_id",         limit: 4
    t.integer  "tunnel_id",       limit: 4
    t.string   "status",          limit: 255
    t.integer  "miner_id",        limit: 4
    t.datetime "attendance_date"
  end

  add_index "attendances", ["mine_id"], name: "index_attendances_on_mine_id", using: :btree
  add_index "attendances", ["miner_id"], name: "index_attendances_on_miner_id", using: :btree
  add_index "attendances", ["tunnel_id"], name: "index_attendances_on_tunnel_id", using: :btree
  add_index "attendances", ["user_id"], name: "index_attendances_on_user_id", using: :btree

  create_table "check_attendances", force: :cascade do |t|
    t.integer  "attendance_id",   limit: 4
    t.integer  "miner_id",        limit: 4
    t.datetime "created_at",                                      null: false
    t.datetime "updated_at",                                      null: false
    t.string   "attendance_type", limit: 255, default: "present"
  end

  add_index "check_attendances", ["attendance_id"], name: "index_check_attendances_on_attendance_id", using: :btree
  add_index "check_attendances", ["miner_id"], name: "index_check_attendances_on_miner_id", using: :btree

  create_table "credit_invoices", force: :cascade do |t|
    t.string   "title",         limit: 255
    t.string   "code",          limit: 255
    t.datetime "value_date"
    t.datetime "due_date"
    t.datetime "duration_from"
    t.datetime "duration_to"
    t.string   "remarks",       limit: 255
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "debit_invoices", force: :cascade do |t|
    t.decimal  "amount",                   precision: 10
    t.string   "account_name", limit: 255
    t.datetime "created_at",                              null: false
    t.datetime "updated_at",                              null: false
    t.integer  "invoice_id",   limit: 4
  end

  add_index "debit_invoices", ["invoice_id"], name: "index_debit_invoices_on_invoice_id", using: :btree

  create_table "employees", force: :cascade do |t|
    t.string   "name",            limit: 255
    t.string   "address",         limit: 255
    t.date     "birthday"
    t.string   "mobile_number",   limit: 255
    t.integer  "employee_type",   limit: 4
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
    t.float    "salary",          limit: 24
    t.integer  "employee_status", limit: 4
  end

  create_table "expense_sub_types", force: :cascade do |t|
    t.integer  "expense_type_id",       limit: 4
    t.datetime "created_at",                        null: false
    t.datetime "updated_at",                        null: false
    t.string   "name",                  limit: 255
    t.string   "expense_sub_type_code", limit: 255
  end

  add_index "expense_sub_types", ["expense_type_id"], name: "index_expense_sub_types_on_expense_type_id", using: :btree

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

  create_table "fixed_assets", force: :cascade do |t|
    t.string   "category",       limit: 255
    t.datetime "date_purchased"
    t.integer  "quantity",       limit: 4
    t.integer  "amount",         limit: 4
    t.string   "remarks",        limit: 255
    t.string   "item_code",      limit: 255
    t.string   "location",       limit: 255
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  create_table "in_categories", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "inventories", force: :cascade do |t|
    t.integer  "quantity",       limit: 4
    t.float    "amount",         limit: 24
    t.datetime "created_at",                                         null: false
    t.datetime "updated_at",                                         null: false
    t.integer  "mine_id",        limit: 4
    t.integer  "tunnel_id",      limit: 4
    t.integer  "item_id",        limit: 4
    t.string   "description",    limit: 255
    t.decimal  "total",                      precision: 8, scale: 2
    t.integer  "category_id",    limit: 4
    t.integer  "in_category_id", limit: 4
  end

  add_index "inventories", ["category_id"], name: "index_inventories_on_category_id", using: :btree
  add_index "inventories", ["in_category_id"], name: "index_inventories_on_in_category_id", using: :btree
  add_index "inventories", ["item_id"], name: "index_inventories_on_item_id", using: :btree
  add_index "inventories", ["mine_id"], name: "index_inventories_on_mine_id", using: :btree
  add_index "inventories", ["tunnel_id"], name: "index_inventories_on_tunnel_id", using: :btree

  create_table "invoice_items", force: :cascade do |t|
    t.string   "particular_type", limit: 255
    t.integer  "quantity",        limit: 4
    t.string   "description",     limit: 255
    t.decimal  "amount",                      precision: 10
    t.datetime "created_at",                                           null: false
    t.datetime "updated_at",                                           null: false
    t.integer  "invoice_id",      limit: 4
    t.decimal  "total_amount",                precision: 8,  scale: 2
    t.string   "unit",            limit: 255
    t.string   "account_name",    limit: 255
  end

  add_index "invoice_items", ["invoice_id"], name: "index_invoice_items_on_invoice_id", using: :btree

  create_table "invoices", force: :cascade do |t|
    t.string   "particular_type", limit: 255
    t.decimal  "total_amount",                precision: 10
    t.datetime "created_at",                                 null: false
    t.datetime "updated_at",                                 null: false
    t.string   "payee",           limit: 255
    t.string   "particulars",     limit: 255
    t.string   "invoice_code",    limit: 255
    t.integer  "vendor_id",       limit: 4
  end

  add_index "invoices", ["vendor_id"], name: "index_invoices_on_vendor_id", using: :btree

  create_table "items", force: :cascade do |t|
    t.integer  "mine_id",        limit: 4
    t.datetime "created_at",                                         null: false
    t.datetime "updated_at",                                         null: false
    t.string   "name",           limit: 255
    t.decimal  "current_amount",             precision: 8, scale: 2
    t.string   "item_code",      limit: 255
    t.string   "description",    limit: 255
  end

  add_index "items", ["mine_id"], name: "index_items_on_mine_id", using: :btree

  create_table "miners", force: :cascade do |t|
    t.string   "first_name",    limit: 255
    t.string   "last_name",     limit: 255
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
    t.integer  "mine_id",       limit: 4
    t.string   "address",       limit: 255
    t.string   "mobile_number", limit: 255
    t.integer  "tunnel_id",     limit: 4
    t.string   "position",      limit: 255
    t.boolean  "is_active"
    t.datetime "date_hired"
    t.string   "name",          limit: 255
  end

  add_index "miners", ["mine_id"], name: "index_miners_on_mine_id", using: :btree
  add_index "miners", ["tunnel_id"], name: "index_miners_on_tunnel_id", using: :btree

  create_table "mines", force: :cascade do |t|
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
    t.string   "name",        limit: 255
    t.integer  "user_id",     limit: 4
    t.string   "description", limit: 255
  end

  add_index "mines", ["user_id"], name: "index_mines_on_user_id", using: :btree

  create_table "mining_operation_costs", force: :cascade do |t|
    t.integer  "expense_id",          limit: 4
    t.integer  "mining_operation_id", limit: 4
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
  end

  add_index "mining_operation_costs", ["expense_id"], name: "index_mining_operation_costs_on_expense_id", using: :btree
  add_index "mining_operation_costs", ["mining_operation_id"], name: "index_mining_operation_costs_on_mining_operation_id", using: :btree

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

  create_table "payroll_data", force: :cascade do |t|
    t.integer  "employee_id", limit: 4
    t.integer  "payroll_id",  limit: 4
    t.float    "salary",      limit: 24
    t.float    "deduction",   limit: 24
    t.float    "net",         limit: 24
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_index "payroll_data", ["employee_id"], name: "index_payroll_data_on_employee_id", using: :btree
  add_index "payroll_data", ["payroll_id"], name: "index_payroll_data_on_payroll_id", using: :btree

  create_table "payrolls", force: :cascade do |t|
    t.string   "reference_number", limit: 255
    t.date     "payroll_date"
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
  end

  create_table "personnel_categories", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "personnels", force: :cascade do |t|
    t.string   "name",        limit: 255
    t.date     "date_hired"
    t.boolean  "active"
    t.date     "date_resign"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "plant_millings", force: :cascade do |t|
    t.integer  "team_id",           limit: 4
    t.datetime "milled_from"
    t.datetime "milled_to"
    t.float    "ore_count",         limit: 24
    t.float    "ore_weight",        limit: 24
    t.float    "refined_output",    limit: 24
    t.string   "reference_number",  limit: 255
    t.datetime "date_sold"
    t.float    "sold_quantity",     limit: 24
    t.float    "unit_price",        limit: 24
    t.float    "revenue",           limit: 24
    t.float    "jdt_trading_share", limit: 24
    t.float    "plant_charge",      limit: 24
    t.float    "gross_sale",        limit: 24
    t.float    "corp_share",        limit: 24
    t.float    "royalty_share",     limit: 24
    t.float    "miner_share",       limit: 24
    t.float    "contractor_share",  limit: 24
    t.float    "pioneer_share",     limit: 24
    t.float    "msebua_share",      limit: 24
    t.float    "community_fund",    limit: 24
    t.string   "remarks",           limit: 255
    t.string   "notes",             limit: 255
    t.integer  "mine_id",           limit: 4
    t.integer  "updated_by",        limit: 4
    t.integer  "created_by",        limit: 4
    t.string   "control_number",    limit: 255
    t.datetime "created_at",                                null: false
    t.datetime "updated_at",                                null: false
    t.integer  "tunnel_id",         limit: 4
    t.integer  "production_type",   limit: 4,   default: 2
    t.integer  "product_state",     limit: 4,   default: 1
    t.string   "who_sold",          limit: 255
  end

  add_index "plant_millings", ["mine_id"], name: "index_plant_millings_on_mine_id", using: :btree
  add_index "plant_millings", ["team_id"], name: "index_plant_millings_on_team_id", using: :btree
  add_index "plant_millings", ["tunnel_id"], name: "index_plant_millings_on_tunnel_id", using: :btree

  create_table "plutus_accounts", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.string   "type",       limit: 255
    t.boolean  "contra"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "item_code",  limit: 255
  end

  add_index "plutus_accounts", ["name", "type"], name: "index_plutus_accounts_on_name_and_type", using: :btree

  create_table "plutus_amounts", force: :cascade do |t|
    t.string  "type",       limit: 255
    t.integer "account_id", limit: 4
    t.integer "entry_id",   limit: 4
    t.decimal "amount",                 precision: 20, scale: 10
  end

  add_index "plutus_amounts", ["account_id", "entry_id"], name: "index_plutus_amounts_on_account_id_and_entry_id", using: :btree
  add_index "plutus_amounts", ["entry_id", "account_id"], name: "index_plutus_amounts_on_entry_id_and_account_id", using: :btree
  add_index "plutus_amounts", ["type"], name: "index_plutus_amounts_on_type", using: :btree

  create_table "plutus_entries", force: :cascade do |t|
    t.string   "description",              limit: 255
    t.date     "date"
    t.integer  "commercial_document_id",   limit: 4
    t.string   "commercial_document_type", limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "plutus_entries", ["commercial_document_id", "commercial_document_type"], name: "index_entries_on_commercial_doc", using: :btree
  add_index "plutus_entries", ["date"], name: "index_plutus_entries_on_date", using: :btree

  create_table "roles", force: :cascade do |t|
    t.string   "name",          limit: 255
    t.integer  "resource_id",   limit: 4
    t.string   "resource_type", limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "roles", ["name", "resource_type", "resource_id"], name: "index_roles_on_name_and_resource_type_and_resource_id", using: :btree
  add_index "roles", ["name"], name: "index_roles_on_name", using: :btree

  create_table "stored_operation_types", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "stored_statuses", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

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
    t.integer  "miner_id",   limit: 4
  end

  add_index "team_members", ["miner_id"], name: "index_team_members_on_miner_id", using: :btree
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

  create_table "tunnel_operations", force: :cascade do |t|
    t.integer  "production_count",      limit: 4,   default: 0
    t.string   "production_name",       limit: 255
    t.integer  "export_count",          limit: 4,   default: 0
    t.string   "export_name",           limit: 255
    t.string   "status",                limit: 255
    t.integer  "stock_pile",            limit: 4,   default: 0
    t.string   "stock_pile_name",       limit: 255
    t.integer  "updated_by",            limit: 4
    t.integer  "created_by",            limit: 4
    t.integer  "tunnel_id",             limit: 4
    t.integer  "mine_id",               limit: 4
    t.string   "operation_type",        limit: 255
    t.datetime "created_at",                                    null: false
    t.datetime "updated_at",                                    null: false
    t.datetime "tunnel_operation_date"
  end

  add_index "tunnel_operations", ["mine_id"], name: "index_tunnel_operations_on_mine_id", using: :btree
  add_index "tunnel_operations", ["tunnel_id"], name: "index_tunnel_operations_on_tunnel_id", using: :btree

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

  create_table "vendors", force: :cascade do |t|
    t.string   "name",          limit: 255
    t.string   "address",       limit: 255
    t.string   "contact",       limit: 255
    t.string   "vendor_number", limit: 255
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  add_foreign_key "attendances", "miners"
  add_foreign_key "attendances", "mines"
  add_foreign_key "attendances", "tunnels"
  add_foreign_key "attendances", "users"
  add_foreign_key "check_attendances", "attendances"
  add_foreign_key "check_attendances", "miners"
  add_foreign_key "debit_invoices", "invoices"
  add_foreign_key "expense_sub_types", "expense_types"
  add_foreign_key "expenses", "mines"
  add_foreign_key "expenses", "users"
  add_foreign_key "inventories", "in_categories"
  add_foreign_key "inventories", "items"
  add_foreign_key "inventories", "mines"
  add_foreign_key "inventories", "tunnels"
  add_foreign_key "invoice_items", "invoices"
  add_foreign_key "invoices", "vendors"
  add_foreign_key "items", "mines"
  add_foreign_key "miners", "mines"
  add_foreign_key "miners", "tunnels"
  add_foreign_key "mines", "users"
  add_foreign_key "mining_operation_costs", "expenses"
  add_foreign_key "mining_operation_costs", "mining_operations"
  add_foreign_key "mining_operations", "mines"
  add_foreign_key "mining_operations", "tunnels"
  add_foreign_key "payroll_data", "employees"
  add_foreign_key "payroll_data", "payrolls"
  add_foreign_key "plant_millings", "mines"
  add_foreign_key "plant_millings", "teams"
  add_foreign_key "plant_millings", "tunnels"
  add_foreign_key "team_members", "miners"
  add_foreign_key "team_members", "teams"
  add_foreign_key "team_members", "users"
  add_foreign_key "tunnel_expenses", "expenses"
  add_foreign_key "tunnel_expenses", "tunnels"
  add_foreign_key "tunnel_operations", "mines"
  add_foreign_key "tunnel_operations", "tunnels"
  add_foreign_key "tunnels", "mines"
end
