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

ActiveRecord::Schema.define(version: 20160830102022) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "carts", force: :cascade do |t|
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "categories", force: :cascade do |t|
    t.text     "name"
    t.text     "image"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.text     "banner"
  end

  create_table "categories_products", force: :cascade do |t|
    t.integer "category_id"
    t.integer "product_id"
  end

  create_table "favorites", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "favorited_id"
    t.string   "favorited_type"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  add_index "favorites", ["favorited_type", "favorited_id"], name: "index_favorites_on_favorited_type_and_favorited_id", using: :btree
  add_index "favorites", ["user_id"], name: "index_favorites_on_user_id", using: :btree

  create_table "favourites", force: :cascade do |t|
    t.text     "title"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "favourites_products", force: :cascade do |t|
    t.integer "favourite_id"
    t.integer "product_id"
  end

  create_table "order_items", force: :cascade do |t|
    t.integer  "product_id"
    t.integer  "wish_id"
    t.decimal  "unit_price",  precision: 12, scale: 3
    t.integer  "quantity"
    t.decimal  "total_price", precision: 12, scale: 3
    t.datetime "created_at",                           null: false
    t.datetime "updated_at",                           null: false
  end

  add_index "order_items", ["product_id"], name: "index_order_items_on_product_id", using: :btree
  add_index "order_items", ["wish_id"], name: "index_order_items_on_wish_id", using: :btree

  create_table "order_statuses", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "orders", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "products", force: :cascade do |t|
    t.text     "name"
    t.string   "price"
    t.text     "image"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "imageshow"
    t.integer  "inventory"
    t.boolean  "active"
  end

  create_table "reports", force: :cascade do |t|
    t.date     "basket"
    t.date     "purchase"
    t.date     "payment"
    t.date     "shipped"
    t.date     "finalised"
    t.integer  "order_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "shopping_carts", force: :cascade do |t|
    t.integer  "quantity"
    t.float    "unit_cost"
    t.integer  "wish_id"
    t.integer  "product_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "user_id"
    t.float    "unit_price"
  end

  create_table "users", force: :cascade do |t|
    t.text     "email"
    t.text     "password_digest"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "admin",           default: false
    t.text     "image"
    t.text     "username"
  end

  create_table "wishes", force: :cascade do |t|
    t.text     "invoice_number"
    t.float    "total_cost"
    t.float    "total_tax"
    t.float    "discount_amount"
    t.integer  "user_id"
    t.integer  "order_status_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.text     "order_status"
    t.date     "purchase_date"
    t.date     "payment_date"
    t.date     "shipped_date"
    t.date     "finalised_date"
    t.float    "total_revenue"
    t.text     "delivery_address"
    t.string   "shipping_id"
    t.string   "wish_status"
  end

  add_foreign_key "favorites", "users"
  add_foreign_key "order_items", "products"
  add_foreign_key "order_items", "wishes"
end
