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

ActiveRecord::Schema.define(version: 20180326074931) do

  create_table "auth_tokens", force: :cascade do |t|
    t.string   "token"
    t.string   "refresh_token"
    t.datetime "expired_at"
    t.integer  "user_id"
    t.index ["user_id"], name: "index_auth_tokens_on_user_id"
  end

  create_table "notis", force: :cascade do |t|
    t.string  "resource_type"
    t.integer "resource_id"
  end

  create_table "orders", force: :cascade do |t|
    t.integer "user_id"
    t.index ["user_id"], name: "index_orders_on_user_id"
  end

  create_table "products", force: :cascade do |t|
    t.integer "shop_id"
    t.index ["shop_id"], name: "index_products_on_shop_id"
  end

  create_table "shops", force: :cascade do |t|
    t.string  "name"
    t.integer "user_id"
    t.index ["user_id"], name: "index_shops_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password_digest"
  end

end
