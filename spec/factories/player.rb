FactoryBot.define do
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
    twitter_handle "@RiskSanchez"
    profile_image "boba_fett.jpg"
  end

  factory :rick, class: Player do
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
    twitter_handle "@RiskSanchez"
    profile_image "boba_fett.jpg"
  end

  factory :morty, class: Player do
    display_name "Morty Smith"
    active 1
    jersey 65
    last_name "Smith"
    first_name "Morty"
    pro_team "DEN"
    position "RB"
    height "48 in"
    weight "250 lbs"
    dob "1985/01/06"
    college "Colorado State"
    fantasy_team
    twitter_handle "@MortySucks"
    profile_image "boba_fett.jpg"
  end
end
