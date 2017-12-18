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

ActiveRecord::Schema.define(version: 20171218203732) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "fantasy_teams", force: :cascade do |t|
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
    t.bigint "fantasy_team_id"
    t.index ["fantasy_team_id"], name: "index_players_on_fantasy_team_id"
  end

  create_table "season_stats", force: :cascade do |t|
    t.string "season"
    t.integer "games_played"
    t.integer "completions"
    t.integer "attempts"
    t.float "completion_percentage"
    t.integer "passing_yards"
    t.float "average_yards_per_attempt"
    t.integer "passing_touchdowns"
    t.integer "interceptions"
    t.integer "fumbles"
    t.integer "rushing_attempts"
    t.integer "rushing_yards"
    t.integer "average_yards_per_carry"
    t.integer "rushing_touchdowns"
    t.integer "pass_receptions"
    t.integer "receiving_yards"
    t.float "average_yards_per_reception"
    t.integer "receiving_touchdowns"
    t.integer "field_goals_made"
    t.integer "field_goals_attempted"
    t.float "field_goal_percentage"
    t.float "extra_point_percentage"
    t.integer "extra_point_made"
    t.integer "extra_point_attempted"
    t.bigint "player_id"
    t.index ["player_id"], name: "index_season_stats_on_player_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email"
    t.string "password_digest"
    t.string "role"
    t.string "full_name"
  end

  add_foreign_key "players", "fantasy_teams"
  add_foreign_key "season_stats", "players"
end
