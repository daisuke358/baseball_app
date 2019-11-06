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

ActiveRecord::Schema.define(version: 20191103133515) do

  create_table "batters", force: :cascade do |t|
    t.string "name"
    t.string "picture"
    t.boolean "league", default: false
    t.decimal "avg", precision: 6, scale: 3
    t.integer "avg_view"
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
    t.integer "avg_g"
    t.integer "w_oba_g"
    t.integer "rc27_g"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pitchers", force: :cascade do |t|
    t.string "name"
    t.string "picture"
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
    t.integer "era_g"
    t.integer "whip_g"
    t.integer "fip_g"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name", default: "", null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
