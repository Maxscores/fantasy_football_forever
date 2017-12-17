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

ActiveRecord::Schema.define(version: 20171217153354) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "ff_teams", force: :cascade do |t|
    t.string "name"
    t.string "owner"
  end

  create_table "players", force: :cascade do |t|
    t.integer "active"
    t.integer "jersey"
    t.string "last_name"
    t.string "first_name"
    t.string "display_name"
    t.string "pro_team"
    t.string "position"
    t.string "height"
    t.string "weight"
    t.string "dob"
    t.string "college"
    t.bigint "ff_team_id"
    t.index ["ff_team_id"], name: "index_players_on_ff_team_id"
  end

  add_foreign_key "players", "ff_teams"
end
