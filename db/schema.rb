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

ActiveRecord::Schema.define(version: 20140624162720) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "tow_trucks", force: true do |t|
    t.text    "make"
    t.text    "model"
    t.text    "notes"
    t.integer "year"
    t.date    "acquired_on"
    t.integer "mileage"
    t.date    "serviced_on"
  end

  create_table "vehicles", force: true do |t|
    t.text    "make"
    t.text    "model"
    t.text    "color"
    t.integer "year"
    t.text    "vin",          null: false
    t.date    "acquired_on"
    t.text    "notes"
    t.date    "picked_up_on"
    t.text    "vehicle_type"
  end

  add_index "vehicles", ["vin"], name: "index_vehicles_on_vin", unique: true, using: :btree

end
