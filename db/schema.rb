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

ActiveRecord::Schema.define(version: 20171022212602) do

  create_table "clients", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.integer "phone"
    t.float "total_payment"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "detail_invoices", force: :cascade do |t|
    t.string "name_project"
    t.integer "quantity"
    t.string "description"
    t.float "value"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "expenses", force: :cascade do |t|
    t.float "quantity"
    t.string "process"
    t.date "date_expenses"
    t.string "category"
    t.string "state"
    t.boolean "vinculation"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "freelances", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.float "total_amount"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "incomes", force: :cascade do |t|
    t.float "amount"
    t.string "clasification"
    t.string "info"
    t.string "name_client"
    t.string "name_project"
    t.string "developer"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "invoices", force: :cascade do |t|
    t.integer "number"
    t.date "date_invoice"
    t.date "end_date"
    t.string "name_client"
    t.float "total_value"
    t.string "state"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "client_id"
    t.index ["client_id"], name: "index_invoices_on_client_id"
  end

  create_table "projects", force: :cascade do |t|
    t.string "name_project"
    t.text "description"
    t.date "star_date"
    t.date "end_date"
    t.string "name_client"
    t.string "state_project"
    t.string "type_project"
    t.float "price"
    t.float "progress"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "quotation_registries", force: :cascade do |t|
    t.integer "idquotationregistry"
    t.string "date"
    t.string "nameclient"
    t.string "business"
    t.string "product"
    t.integer "value"
    t.integer "validity"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "state_projects", force: :cascade do |t|
    t.string "name_state"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "type_projects", force: :cascade do |t|
    t.string "name_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "provider"
    t.string "uid"
    t.string "name"
    t.text "image"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
