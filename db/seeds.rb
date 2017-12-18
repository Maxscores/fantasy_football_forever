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

FantasyTeam.all.each do |team|
  10.times do
    team.players << Player.where(fantasy_team_id: free_agents.id).sample
  end
end

all_players = Player.count
qb = Player.where(position: "QB")
rb = Player.where(position: "RB")
wr = Player.where(position: "WR")
te = Player.where(position: "TE")
k = Player.where(position: "K")


def normal_distribution(count, average, variance)
  Array.new(count) { average + (variance) * Math.sqrt(-2 * Math.log(rand)) * Math.cos(2 * Math::PI * rand) }
end

seasons = [2010, 2011, 2012, 2013, 2014]
qb_completions = normal_distribution(qb.count * seasons.count, 2800, 2)
qb_completion_percentages = normal_distribution(qb.count * seasons.count, 65, 2)
qb_passing_yards = normal_distribution(qb.count * seasons.count, 3500, 5)
qb_passing_touchdowns = normal_distribution(qb.count * seasons.count, 35, 8)
qb_interceptions = normal_distribution(qb.count * seasons.count, 15, 8)
all_fumbles = normal_distribution(all_players * seasons.count, 5, 3)
rb_rushing_attempts = normal_distribution(rb.count * seasons.count, 150, 20)
rb_yards_per_carry = normal_distribution(rb.count * seasons.count, 4, 1)
rb_rushing_touchdowns = normal_distribution(rb.count * seasons.count, 5, 4)
wr_pass_receptions = normal_distribution(wr.count * seasons.count, 60, 20)
wr_receiving_yards = normal_distribution(wr.count * seasons.count, 800, 50)
wr_receiving_touchdowns = normal_distribution(wr.count * seasons.count, 5, 4)
te_pass_receptions = normal_distribution(wr.count * seasons.count, 30, 10)
te_receiving_yards = normal_distribution(wr.count * seasons.count, 400, 50)
te_receiving_touchdowns = normal_distribution(wr.count * seasons.count, 3, 2)
k_field_goal_percentage = normal_distribution(k.count * seasons.count, 95, 1)
k_field_goal_made = normal_distribution(k.count * seasons.count, 40, 4)
k_extra_point_made = normal_distribution(k.count * seasons.count, 20, 4)
k_extra_point_percentage = normal_distribution(k.count * seasons.count, 98, 0.6)

k.each do |player|
  seasons.each do |season|
    field_goal_percentage = (k_field_goal_percentage.pop).round(2)
    field_goals_made = k_field_goal_made.pop
    field_goals_attempted = field_goals_made / (field_goal_percentage / 100)
    extra_point_made = k_extra_point_made.pop
    extra_point_percentage = (k_extra_point_percentage.pop).round(2)
    extra_point_attempted = extra_point_made / (extra_point_percentage / 100)
    SeasonStat.create!(games_played: 16,
                       completions: 0,
                       completion_percentage: 0,
                       attempts: 0,
                       passing_yards: 0,
                       average_yards_per_attempt: 0,
                       passing_touchdowns: 0,
                       interceptions: 0,
                       fumbles: all_fumbles.pop,
                       rushing_attempts: 0,
                       rushing_yards: 0,
                       average_yards_per_carry: 0,
                       rushing_touchdowns: 0,
                       pass_receptions: 0,
                       receiving_yards: 0,
                       average_yards_per_reception: 0,
                       receiving_touchdowns: 0,
                       field_goals_made: field_goals_made,
                       field_goals_attempted: field_goals_attempted,
                       field_goal_percentage: field_goal_percentage,
                       extra_point_made: extra_point_made,
                       extra_point_attempted: extra_point_attempted,
                       extra_point_percentage: extra_point_percentage,
                       player_id: player.id,
                       season: season
                     )
  end
end

te.each do |player|
  seasons.each do |season|
    pass_receptions = te_pass_receptions.pop
    receiving_yards = te_receiving_yards.pop
    average_yards_per_reception = (pass_receptions * receiving_yards).round(2)
    receiving_touchdowns = te_receiving_touchdowns.pop
    SeasonStat.create!(games_played: 16,
                       completions: 0,
                       completion_percentage: 0,
                       attempts: 0,
                       passing_yards: 0,
                       average_yards_per_attempt: 0,
                       passing_touchdowns: 0,
                       interceptions: 0,
                       fumbles: all_fumbles.pop,
                       rushing_attempts: 0,
                       rushing_yards: 0,
                       average_yards_per_carry: 0,
                       rushing_touchdowns: 0,
                       pass_receptions: pass_receptions,
                       receiving_yards: receiving_yards,
                       average_yards_per_reception: average_yards_per_reception,
                       receiving_touchdowns: receiving_touchdowns,
                       field_goals_made: 0,
                       field_goals_attempted: 0,
                       field_goal_percentage: 0,
                       extra_point_made: 0,
                       extra_point_attempted: 0,
                       extra_point_percentage: 0,
                       player_id: player.id,
                       season: season
                     )
  end
end

wr.each do |player|
  seasons.each do |season|
    pass_receptions = wr_pass_receptions.pop
    receiving_yards = wr_receiving_yards.pop
    average_yards_per_reception = (pass_receptions * receiving_yards).round(2)
    receiving_touchdowns = wr_receiving_touchdowns.pop
    SeasonStat.create!(games_played: 16,
                       completions: 0,
                       completion_percentage: 0,
                       attempts: 0,
                       passing_yards: 0,
                       average_yards_per_attempt: 0,
                       passing_touchdowns: 0,
                       interceptions: 0,
                       fumbles: all_fumbles.pop,
                       rushing_attempts: 0,
                       rushing_yards: 0,
                       average_yards_per_carry: 0,
                       rushing_touchdowns: 0,
                       pass_receptions: pass_receptions,
                       receiving_yards: receiving_yards,
                       average_yards_per_reception: average_yards_per_reception,
                       receiving_touchdowns: receiving_touchdowns,
                       field_goals_made: 0,
                       field_goals_attempted: 0,
                       field_goal_percentage: 0,
                       extra_point_made: 0,
                       extra_point_attempted: 0,
                       extra_point_percentage: 0,
                       player_id: player.id,
                       season: season
                     )
  end
end

rb.each do |player|
  seasons.each do |season|
    rushing_attempts = rb_rushing_attempts.pop
    yards_per_carry = (rb_yards_per_carry.pop).round(2)
    rushing_yards = rushing_attempts * yards_per_carry
    rushing_touchdowns = rb_rushing_touchdowns.pop
    SeasonStat.create!(games_played: 16,
                       completions: 0,
                       completion_percentage: 0,
                       attempts: 0,
                       passing_yards: 0,
                       average_yards_per_attempt: 0,
                       passing_touchdowns: 0,
                       interceptions: 0,
                       fumbles: all_fumbles.pop,
                       rushing_attempts: rushing_attempts,
                       rushing_yards: rushing_yards,
                       average_yards_per_carry: yards_per_carry,
                       rushing_touchdowns: rushing_touchdowns,
                       pass_receptions: 0,
                       receiving_yards: 0,
                       average_yards_per_reception: 0,
                       receiving_touchdowns: 0,
                       field_goals_made: 0,
                       field_goals_attempted: 0,
                       field_goal_percentage: 0,
                       extra_point_made: 0,
                       extra_point_attempted: 0,
                       extra_point_percentage: 0,
                       player_id: player.id,
                       season: season
                     )
  end
end

qb.each do |player|
  seasons.each do |season|
    completions = qb_completions.pop
    completion_percentage = (qb_completion_percentages.pop).round(2)
    attempts = completions / (completion_percentage / 100)
    passing_yards = qb_passing_yards.pop
    average_yards_per_attempt = (passing_yards / attempts).round(2)
    passing_touchdowns = qb_passing_touchdowns.pop
    interceptions = qb_interceptions.pop
    SeasonStat.create!(games_played: 16,
                       completions: completions,
                       completion_percentage: completion_percentage,
                       attempts: attempts,
                       passing_yards: passing_yards,
                       average_yards_per_attempt: average_yards_per_attempt,
                       passing_touchdowns: passing_touchdowns,
                       interceptions: interceptions,
                       fumbles: all_fumbles.pop,
                       rushing_attempts: 0,
                       rushing_yards: 0,
                       average_yards_per_carry: 0,
                       rushing_touchdowns: 0,
                       pass_receptions: 0,
                       receiving_yards: 0,
                       average_yards_per_reception: 0,
                       receiving_touchdowns: 0,
                       field_goals_made: 0,
                       field_goals_attempted: 0,
                       field_goal_percentage: 0,
                       extra_point_made: 0,
                       extra_point_attempted: 0,
                       extra_point_percentage: 0,
                       player_id: player.id,
                       season: season
                     )
  end
end
