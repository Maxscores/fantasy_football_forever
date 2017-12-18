require 'fantasy_football_nerd'
require 'database_cleaner'
require 'csv'

DatabaseCleaner.strategy = :truncation
DatabaseCleaner.clean

free_agents = FantasyTeam.create(name: "Free Agents", owner: "None")

10.times do
  FantasyTeam.create(name: Faker::DrWho.specie, owner: Faker::DrWho.character)
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

teams = FantasyTeam.where.not(name: "Free Agent")
teams.each do |team|
  10.times do
    team.players << Player.where("active = 1 AND fantasy_team_id = #{free_agents.id}").sample
  end
end

CSV.open("./db/data/players.csv", 'w') do |csv|
  csv << Player.column_names
  Player.all.each do |m|
    csv << m.attributes.values
  end
end

CSV.open("./db/data/fantasy_teams.csv", 'w') do |csv|
  csv << FantasyTeam.column_names
  FantasyTeam.all.each do |m|
    csv << m.attributes.values
  end
end
