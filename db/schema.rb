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

ActiveRecord::Schema.define(version: 20191031110534) do

  create_table "batters", force: :cascade do |t|
    t.string "name"
    t.string "picture_id"
    t.boolean "league", default: false
    t.decimal "avg", precision: 6, scale: 3
    t.integer "game"
    t.integer "pa"
    t.integer "ab"
    t.integer "hit"
    t.integer "hit_2b"
    t.integer "hit_3b"
    t.integer "hr"
    t.integer "tb"
    t.integer "rbi"
    t.integer "run"
    t.integer "so"
    t.integer "bb"
    t.integer "ibb"
    t.integer "hbp"
    t.integer "sh"
    t.integer "sf"
    t.integer "sb"
    t.integer "cs"
    t.integer "gdp"
    t.decimal "obp", precision: 6, scale: 3
    t.decimal "slg", precision: 6, scale: 3
    t.decimal "ops", precision: 7, scale: 3
    t.decimal "w_oba", precision: 6, scale: 3
    t.decimal "w_raa_c", precision: 6, scale: 3
    t.decimal "w_raa_p", precision: 6, scale: 3
    t.decimal "w_rc_c", precision: 6, scale: 3
    t.decimal "w_rc_p", precision: 6, scale: 3
    t.decimal "iso_d", precision: 6, scale: 3
    t.decimal "iso_p", precision: 6, scale: 3
    t.decimal "rc27", precision: 6, scale: 3
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pitchers", force: :cascade do |t|
    t.string "name"
    t.string "picture_id"
    t.boolean "league", default: false
    t.integer "win"
    t.integer "lose"
    t.integer "game"
    t.integer "cg"
    t.integer "sho"
    t.integer "qs"
    t.integer "hld"
    t.integer "hp"
    t.integer "sv"
    t.decimal "wpct", precision: 5, scale: 3
    t.integer "o"
    t.decimal "ip", precision: 5, scale: 1
    t.integer "tbf"
    t.integer "hit"
    t.integer "hr"
    t.integer "so"
    t.decimal "k_9", precision: 5, scale: 2
    t.integer "bb"
    t.integer "hbp"
    t.integer "wp"
    t.integer "bk"
    t.integer "r"
    t.integer "er"
    t.decimal "era", precision: 4, scale: 2
    t.decimal "k_bb", precision: 4, scale: 2
    t.decimal "whip", precision: 4, scale: 2
    t.decimal "rsaa_c", precision: 5, scale: 2
    t.decimal "rsaa_p", precision: 5, scale: 2
    t.decimal "fip", precision: 4, scale: 2
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
