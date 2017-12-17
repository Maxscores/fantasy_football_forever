describe "When a user visits the player index" do
  it "sees all players" do
    rick = create(:rick)
    morty = create(:morty)

    visit players_path

    expect(page).to have_content("All Players")
    within ".player_#{rick.id}" do
      expect(page).to have_content("Rick Sanchez")
      expect(page).to have_link("Rick Sanchez")
      expect(page).to have_link("#{rick.fantasy_team.name}")
    end
    within ".player_#{morty.id}" do
      expect(page).to have_content("Morty Smith")
      expect(page).to have_link("Morty Smith")
      expect(page).to have_link("#{morty.fantasy_team.name}")
    end
  end

  it "clicks on player name link" do
    rick = create(:rick)

    visit players_path

    click_link "Rick Sanchez"

    expect(current_path).to eq("/players/#{rick.id}")
    expect(page).to have_content("Rick Sanchez")
    expect(page).to have_content("Colorado State")
  end

  it "clicks on player name link" do
    rick = create(:rick)

    visit players_path

    click_link "#{rick.fantasy_team.name}"

    expect(current_path).to eq("/fantasy_teams/#{rick.fantasy_team.id}")
    expect(page).to have_content("Rick Sanchez")
    expect(page).to have_content("#{rick.fantasy_team.name}")
  end
end
