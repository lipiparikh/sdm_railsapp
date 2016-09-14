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

ActiveRecord::Schema.define(version: 20160901043855) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "articals", force: :cascade do |t|
    t.text     "author"
    t.text     "title"
    t.integer  "year"
    t.string   "publisher"
    t.text     "journalname"
    t.integer  "page"
    t.string   "month"
    t.string   "doi"
    t.integer  "volume"
    t.integer  "submitter"
    t.string   "status"
    t.string   "research_methods"
    t.string   "research_metric"
    t.string   "research_participants"
    t.string   "method"
    t.string   "technique"
    t.string   "tool"
    t.string   "evidence"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  create_table "articles", id: false, force: :cascade do |t|
    t.string  "author",                limit: 25
    t.string  "title",                 limit: 50
    t.integer "year"
    t.string  "publisher",             limit: 10
    t.string  "journalname",           limit: 50
    t.integer "page"
    t.string  "month",                 limit: 20
    t.string  "doi",                   limit: 20
    t.integer "volume"
    t.string  "submitter",             limit: 50
    t.string  "status",                limit: 50
    t.string  "research_methods",      limit: 50
    t.string  "research_metric",       limit: 50
    t.string  "research_participants", limit: 50
    t.string  "method",                limit: 50
    t.string  "technique",             limit: 50
    t.string  "tool",                  limit: 50
    t.string  "evidence",              limit: 50
  end

  create_table "users", primary_key: "user_id", force: :cascade do |t|
    t.string   "username"
    t.string   "password"
    t.string   "email"
    t.string   "affiliation"
    t.integer  "age"
    t.string   "gender"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "usertests", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_foreign_key "articals", "users", column: "submitter", primary_key: "user_id"
end
