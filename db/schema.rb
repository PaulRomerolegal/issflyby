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

ActiveRecord::Schema.define(version: 20140403033248) do

  create_table "cards", force: true do |t|
    t.string   "mirror_id"
    t.integer  "pass_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "delayed_jobs", force: true do |t|
    t.integer  "priority",   default: 0, null: false
    t.integer  "attempts",   default: 0, null: false
    t.text     "handler",                null: false
    t.text     "last_error"
    t.datetime "run_at"
    t.datetime "locked_at"
    t.datetime "failed_at"
    t.string   "locked_by"
    t.string   "queue"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "pass_id"
  end

  add_index "delayed_jobs", ["priority", "run_at"], name: "delayed_jobs_priority"

  create_table "passes", force: true do |t|
    t.datetime "risetime"
    t.integer  "duration"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "spacecraft_id"
    t.boolean  "demo"
  end

  create_table "spacecrafts", force: true do |t|
    t.string   "name"
    t.integer  "crew"
    t.float    "lat"
    t.float    "long"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "endpoint"
    t.string   "apiname"
  end

  create_table "spacepeople", force: true do |t|
    t.string   "name"
    t.integer  "spacecraft_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "spacepeople", ["spacecraft_id"], name: "index_spacepeople_on_spacecraft_id"

  create_table "subscriptions", force: true do |t|
    t.integer  "spacecraft_id"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "provider"
    t.string   "uid"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "access_token"
    t.string   "refresh_token"
    t.float    "lat"
    t.float    "long"
    t.datetime "last_passes_call"
    t.boolean  "admin"
    t.datetime "last_demo_card"
  end

end
