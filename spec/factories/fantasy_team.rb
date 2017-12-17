FactoryBot.define do
  factory :fantasy_team do
    name "Free Agents"
    owner "None"
  end

  factory :GoT, class: FantasyTeam do
    name Faker::GameOfThrones.house
    owner Faker::GameOfThrones.character
  end
end
