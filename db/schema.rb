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

ActiveRecord::Schema.define(version: 20140319134747) do

  create_table "klasses", force: true do |t|
    t.integer  "jahrgang"
    t.string   "kennzeichnung"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "lehrers", force: true do |t|
    t.string   "name"
    t.string   "fach1"
    t.string   "fach2"
    t.string   "fach3"
    t.string   "fach4"
    t.integer  "ug"
    t.integer  "uv"
    t.integer  "ums"
    t.integer  "fr"
    t.integer  "Anzahl"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "vorname"
    t.string   "nachname"
    t.string   "klasse"
    t.integer  "berechtigung"
    t.string   "passwort"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
