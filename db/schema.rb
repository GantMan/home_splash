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

ActiveRecord::Schema.define(version: 20150310051028) do

  create_table "backgrounds", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "image_file"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "backgrounds", ["user_id"], name: "index_backgrounds_on_user_id"

  create_table "focus_items", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "focus_items", ["user_id"], name: "index_focus_items_on_user_id"

  create_table "locations", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "address"
    t.string   "city"
    t.string   "state"
    t.string   "zip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "locations", ["user_id"], name: "index_locations_on_user_id"

  create_table "quotes", force: :cascade do |t|
    t.string   "quip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "author"
  end

  create_table "users", force: :cascade do |t|
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
    t.string   "email",                          null: false
    t.string   "encrypted_password", limit: 128, null: false
    t.string   "confirmation_token", limit: 128
    t.string   "remember_token",     limit: 128, null: false
  end

  add_index "users", ["email"], name: "index_users_on_email"
  add_index "users", ["remember_token"], name: "index_users_on_remember_token"

end
