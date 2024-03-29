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

ActiveRecord::Schema.define(version: 20190920061217) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "orders", force: :cascade do |t|
    t.string "ticker", null: false
    t.string "order_type", null: false
    t.integer "entry_price_cents", default: 0, null: false
    t.string "entry_price_currency", default: "USD", null: false
    t.integer "take_profit_cents", default: 0, null: false
    t.string "take_profit_currency", default: "USD", null: false
    t.integer "stop_loss_cents", default: 0, null: false
    t.string "stop_loss_currency", default: "USD", null: false
    t.integer "exit_price_cents", default: 0, null: false
    t.string "exit_price_currency", default: "USD", null: false
    t.integer "shares", null: false
    t.string "status", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
  end

  create_table "stocks", force: :cascade do |t|
    t.string "ticker", null: false
    t.string "company_name", null: false
    t.string "listed_at", null: false
    t.boolean "active", default: false, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "username", null: false
    t.string "email", null: false
    t.string "crypted_password"
    t.string "salt"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "remember_me_token"
    t.datetime "remember_me_token_expires_at"
    t.integer "balance_cents"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["remember_me_token"], name: "index_users_on_remember_me_token"
  end

end
