FactoryBot.define do
  factory :fantasy_team do
    name "The Best Team"
    owner "Max"
  end

  factory :player do
    display_name "Rick Sanchez"
    active 1
    jersey 99
    last_name "Sanchez"
    first_name "Rick"
    pro_team "DEN"
    position "QB"
    height "72 in"
    weight "250 lbs"
    dob "1985/01/06"
    college "Colorado State"
    fantasy_team
  end
end
