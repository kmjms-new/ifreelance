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

ActiveRecord::Schema.define(version: 20171123221557) do

  create_table "clients", force: :cascade do |t|
    t.string "client_name"
    t.string "client_phone"
    t.string "client_email"
    t.string "client_sex"
    t.text "client_address"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "credit_payments", force: :cascade do |t|
    t.decimal "amount"
    t.integer "payment_id"
    t.integer "invoice_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["invoice_id"], name: "index_credit_payments_on_invoice_id"
    t.index ["payment_id"], name: "index_credit_payments_on_payment_id"
  end

  create_table "freelances", force: :cascade do |t|
    t.string "freelance_name"
    t.string "freelance_phone"
    t.string "freelance_email"
    t.string "freelance_sex"
    t.text "freelance_address"
    t.integer "freelance_salary"
    t.integer "freelance_delete"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "invoices", force: :cascade do |t|
    t.string "design_view"
    t.string "programming_front"
    t.string "design_date_base"
    t.string "programming_back"
    t.string "banner"
    t.string "advertising"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "project_id"
    t.text "other"
    t.index ["project_id"], name: "index_invoices_on_project_id"
  end

  create_table "payments", force: :cascade do |t|
    t.integer "invoice_id"
    t.decimal "payment_amount"
    t.string "payment_type"
    t.string "payment_method"
    t.date "payment_date"
    t.text "notes"
    t.boolean "send_payment_notification"
    t.boolean "paid_full"
    t.string "archive_number"
    t.decimal "credit_applied"
    t.string "status"
    t.integer "client_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["client_id"], name: "index_payments_on_client_id"
    t.index ["invoice_id"], name: "index_payments_on_invoice_id"
  end

  create_table "projects", force: :cascade do |t|
    t.integer "client_id"
    t.integer "freelance_id"
    t.date "delivery_date"
    t.integer "project_amount"
    t.integer "project_paid"
    t.string "project_status"
    t.text "project_details"
    t.integer "project_delete"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["client_id"], name: "index_projects_on_client_id"
    t.index ["freelance_id"], name: "index_projects_on_freelance_id"
  end

  create_table "salaries", force: :cascade do |t|
    t.integer "freelance_id"
    t.date "salary_date"
    t.string "salary_month"
    t.integer "salary_paid"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["freelance_id"], name: "index_salaries_on_freelance_id"
  end

  create_table "sent_emails", force: :cascade do |t|
    t.date "date"
    t.string "sender"
    t.string "recipient"
    t.string "type"
    t.string "subject"
    t.text "content"
    t.integer "notification_id"
    t.string "notification_type"
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
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
