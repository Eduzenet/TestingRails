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

ActiveRecord::Schema.define(version: 20160423095906) do

  create_table "continents", force: :cascade do |t|
    t.string   "contName",   limit: 255
    t.string   "contCode",   limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "products", primary_key: "productId", force: :cascade do |t|
    t.string "productName", limit: 200, null: false
  end

  create_table "sales_data", id: false, force: :cascade do |t|
    t.integer "storeId",   limit: 4,  null: false
    t.integer "productId", limit: 4,  null: false
    t.date    "saleDate"
    t.float   "revenue",   limit: 24, null: false
  end

  create_table "stores", primary_key: "storeId", force: :cascade do |t|
    t.string "storeLocation", limit: 100, null: false
    t.string "city",          limit: 100, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "first_name", limit: 255
    t.string   "last_name",  limit: 255
    t.string   "email",      limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

end
