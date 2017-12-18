# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'csv'

CSV.readlines("./assets/files/fantasy_teams.csv", headers: true, header_converters: :symbol) do |csv|
  FantasyTeam.create(name: csv[:name],
                     owner: csv[:owner])
end

CSV.readlines("./files/players.csv", headers: true, header_converters: :symbol) do |csv|
  Player.create(active: csv[:active],
                jersey: csv[:jersey],
                last_name: csv[:last_name],
                first_name: csv[:first_name],
                display_name: csv[:display_name],
                pro_team: csv[:pro_team],
                position: csv[:position],
                height: csv[:height],
                weight: csv[:weight],
                dob: csv[:dob],
                college: csv[:college],
                fantasy_team: csv[:fantasy_team_id])
end
