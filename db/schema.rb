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

ActiveRecord::Schema.define(version: 20130627203343) do

  create_table "attendances", force: true do |t|
    t.string   "status",         limit: 10, default: "Active", null: false
    t.string   "category",       limit: 10, default: "",       null: false
    t.integer  "event_id",                                     null: false
    t.integer  "participant_id",                               null: false
    t.datetime "rsvp_date",                                    null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "events", force: true do |t|
    t.string   "status",      limit: 10,  default: "Active", null: false
    t.string   "category",    limit: 10,  default: "",       null: false
    t.string   "name",        limit: 50,                     null: false
    t.string   "description", limit: 150
    t.string   "agenda",      limit: 150
    t.integer  "group_id",                                   null: false
    t.integer  "location_id"
    t.datetime "start_time",                                 null: false
    t.datetime "end_time",                                   null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "groups", force: true do |t|
    t.string   "status",      limit: 10,  default: "Active", null: false
    t.string   "category",    limit: 10,  default: "",       null: false
    t.string   "name",        limit: 50,                     null: false
    t.string   "description", limit: 150,                    null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "locations", force: true do |t|
    t.string   "name",        limit: 20, null: false
    t.integer  "group_id",               null: false
    t.string   "street1",     limit: 20
    t.string   "street2",     limit: 20
    t.string   "city",        limit: 20
    t.string   "postal_code", limit: 20
    t.string   "region",      limit: 20
    t.string   "country",     limit: 20
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "memberships", force: true do |t|
    t.string   "status",         limit: 10, default: "Active", null: false
    t.string   "category",       limit: 10, default: "",       null: false
    t.integer  "group_id",                                     null: false
    t.integer  "participant_id",                               null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "participants", force: true do |t|
    t.string   "status",        limit: 10, default: "Active", null: false
    t.string   "category",      limit: 10, default: "",       null: false
    t.string   "first_name",    limit: 50
    t.string   "last_name",     limit: 50
    t.string   "nickname",      limit: 50
    t.string   "email_address", limit: 50
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "security_profiles", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.integer  "participant_id",                      null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "security_profiles", ["email"], name: "index_security_profiles_on_email", unique: true, using: :btree
  add_index "security_profiles", ["reset_password_token"], name: "index_security_profiles_on_reset_password_token", unique: true, using: :btree

end
