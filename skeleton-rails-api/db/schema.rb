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

ActiveRecord::Schema.define(version: 20150213220716) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "events", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.string   "location"
    t.datetime "date_time"
    t.integer  "host_id"
    t.integer  "flag_count",  default: 0
    t.string   "category"
    t.boolean  "adult",       default: false
    t.boolean  "public",      default: true
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "rsvps", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "event_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "rsvps", ["event_id"], name: "index_rsvps_on_event_id", using: :btree
  add_index "rsvps", ["user_id"], name: "index_rsvps_on_user_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.integer  "age"
    t.string   "city"
    t.string   "state"
    t.binary   "picture"
    t.integer  "host_rating",           default: 0
    t.integer  "host_rating_count",     default: 0
    t.integer  "attendee_rating",       default: 0
    t.integer  "attendee_rating_count", default: 0
    t.integer  "flag_count",            default: 0
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
