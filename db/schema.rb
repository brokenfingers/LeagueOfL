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

ActiveRecord::Schema.define(version: 20151017070518) do

  create_table "attributes", force: :cascade do |t|
    t.integer  "champion_id"
    t.string   "name"
    t.decimal  "base_value"
    t.decimal  "scale_rate"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "attributes", ["champion_id"], name: "index_attributes_on_champion_id"

  create_table "champions", force: :cascade do |t|
    t.string   "name"
    t.string   "title"
    t.string   "role"
    t.text     "story"
    t.text     "image"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "identities", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "provider"
    t.string   "provider_uid"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "identities", ["user_id"], name: "index_identities_on_user_id"

  create_table "skills", force: :cascade do |t|
    t.integer  "champion_id"
    t.string   "name"
    t.decimal  "physical_damage"
    t.decimal  "magic_damage"
    t.decimal  "true_damage"
    t.text     "description"
    t.decimal  "scale_rate"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "skills", ["champion_id"], name: "index_skills_on_champion_id"

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "summoner_name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
