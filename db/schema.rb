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

ActiveRecord::Schema.define(version: 2018_11_08_214733) do

  create_table "characters", force: :cascade do |t|
    t.string "name"
    t.integer "show_id"
    t.string "species", default: "Human"
    t.string "gender"
    t.boolean "memeable", default: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["show_id"], name: "index_characters_on_show_id"
  end

  create_table "memes", force: :cascade do |t|
    t.string "image"
    t.integer "show_id"
    t.integer "nineties_kid_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "giphy_link"
    t.index ["nineties_kid_id"], name: "index_memes_on_nineties_kid_id"
    t.index ["show_id"], name: "index_memes_on_show_id"
  end

  create_table "nineties_kids", force: :cascade do |t|
    t.integer "created_year"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "shows", force: :cascade do |t|
    t.string "name"
    t.integer "year_created"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
