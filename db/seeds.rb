# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'fantasy_football_nerd'

free_agents = FantasyTeam.create(name: "Free Agents", owner: "None")

names = ["Krall", "Empty Child", "Cyberman", "Eight Legs", "Carrionite",
  "The Ergon", "Uvodni", "Terileptil", "Chameleon", "Posicarian"]
owners = ["Jack Harkness", "Mickey Smith", "Astrid Peth", "Sarag Jane Smith",
"Dr. Who", "Wilfred Mott", "Capatin Jack Harkness", "Mickey Smith", "Adam Mitchell",
"Rose"]

10.times do
  FantasyTeam.create(name: names.pop, owner: owners.pop)
end

FFNerd.players.each do |player|
  Player.create(active: player.active,
                jersey: player.jersey,
                last_name: player.lname,
                first_name: player.fname,
                display_name: player.display_name,
                pro_team: player.team,
                position: player.position,
                height: player.height,
                weight: player.weight,
                dob: player.dob,
                college: player.college,
                fantasy_team: free_agents)
end

all_players = Player.count
qb_count = Player.where(position: "QB").count
rb_count = Player.where(position: "RB").count
wr_count = Player.where(position: "WR").count
te_count = Player.where(position: "TE").count
k_count = Player.where(position: "K").count


def normal_distribution(count, average, variance)
  Array.new(count) { average + (variance) * Math.sqrt(-2 * Math.log(rand)) * Math.cos(2 * Math::PI * rand) }
end

seasons = [2010, 2011, 2012, 2013, 2014]
completions = normal_distribution(qb_count, 2800, 2)
completion_percentages = normal_distribution(qb_count, 65, 2)
passing_yards = normal_distribution(qb_count, 3500, 5)
passing_touchdowns = normal_distribution(qb_count, 35, 8)
interceptions = normal_distribution(qb_count, 15, 8)
fumbles = normal_distribution(all_players, 5, 3)
rushing_attempts = normal_distribution(rb_count, 150, 20)
yards_per_carry = normal_distribution(rb_count, 4, 1)
rushing_touchdowns = normal_distribution(rb_count, 5, 4)
pass_receptions = normal_distribution(wr_count, 60, 20)
receiving_yards = normal_distribution(wr_count, 800, 50)
receiving_touchdowns = normal_distribution(wr_count, 5, 4)
field_goal_percentage = normal_distribution(k_count, 95, 1)
field_goal_made = normal_distribution(k_count, 40, 4)
extra_point_made = normal_distribution(k_count, 20, 4)
extra_point_percentage = normal_distribution(k_count, 98, 0.6)
