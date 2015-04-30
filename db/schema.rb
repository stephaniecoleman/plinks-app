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

ActiveRecord::Schema.define(version: 20150430151819) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "musicians", force: :cascade do |t|
    t.string   "name"
    t.integer  "uid"
    t.string   "handle"
    t.string   "avatar"
    t.string   "location"
    t.string   "url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "plinks", force: :cascade do |t|
    t.string   "text"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.integer  "plink_author_id"
    t.integer  "plink_receiver_id"
  end

  add_index "plinks", ["plink_author_id"], name: "index_plinks_on_plink_author_id", using: :btree
  add_index "plinks", ["plink_receiver_id"], name: "index_plinks_on_plink_receiver_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "uid"
    t.string   "handle"
    t.string   "avatar"
    t.string   "location"
    t.string   "url"
  end

end
