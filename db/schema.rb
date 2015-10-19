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

ActiveRecord::Schema.define(version: 20151019150510) do

  create_table "parents", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "phone"
  end

  create_table "referrals", force: :cascade do |t|
    t.integer "student_id"
    t.integer "staff_member_id"
    t.string  "type"
    t.string  "anecdotal"
    t.string  "text"
    t.string  "points"
    t.string  "integer"
    t.date    "date"
    t.boolean "dean"
    t.integer "period"
    t.string  "location"
    t.string  "infractions"
  end

  create_table "roster_students", force: :cascade do |t|
    t.string "roster_id"
    t.string "student_id"
  end

  create_table "rosters", force: :cascade do |t|
    t.string "name"
    t.string "staff_member_id"
  end

  create_table "schools", force: :cascade do |t|
    t.string "name"
    t.string "phone"
    t.string "address1"
    t.string "address2"
    t.string "city"
    t.string "state"
    t.string "zip"
  end

  create_table "staffs", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "staffs", ["email"], name: "index_staffs_on_email", unique: true
  add_index "staffs", ["reset_password_token"], name: "index_staffs_on_reset_password_token", unique: true

  create_table "student_parents", force: :cascade do |t|
    t.integer "student_id"
    t.integer "parent_id"
  end

  create_table "students", force: :cascade do |t|
    t.string  "name"
    t.integer "id_number"
    t.string  "grade"
  end

end
