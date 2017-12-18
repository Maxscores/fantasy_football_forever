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
