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

ActiveRecord::Schema.define(version: 20170812114529) do

  create_table "areas", force: :cascade do |t|
    t.string   "area",       limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "columns", force: :cascade do |t|
    t.string   "title",      limit: 255
    t.text     "categori_1", limit: 65535
    t.text     "categori_2", limit: 65535
    t.string   "image",      limit: 255
    t.text     "text",       limit: 65535
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "reviews", force: :cascade do |t|
    t.string   "nickname",   limit: 255
    t.float    "rate",       limit: 24
    t.string   "sex",        limit: 255
    t.string   "Position",   limit: 255
    t.text     "good",       limit: 65535
    t.text     "bad",        limit: 65535
    t.integer  "school_id",  limit: 4
    t.boolean  "public"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "area",       limit: 255
  end

  create_table "schools", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.text     "company",    limit: 65535
    t.string   "image",      limit: 255
    t.string   "prefecture", limit: 255
    t.integer  "area_id",    limit: 4
    t.string   "license",    limit: 255
    t.string   "license_2",  limit: 255
    t.string   "license_3",  limit: 255
    t.string   "license_4",  limit: 255
    t.string   "license_5",  limit: 255
    t.text     "address",    limit: 65535
    t.text     "curriculum", limit: 65535
    t.text     "point",      limit: 65535
    t.text     "group",      limit: 65535
    t.text     "other",      limit: 65535
    t.datetime "created_at"
    t.datetime "updated_at"
    t.float    "latitude",   limit: 24
    t.float    "longitude",  limit: 24
  end

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
    t.boolean  "admin_flg"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
