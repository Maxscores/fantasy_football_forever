describe "User visits fantasy team show page" do
  it "sees all players on that team" do
    team_1 = create(:GoT)
    10.times do
      team_1.players << create(:player)
    end

    visit fantasy_team_path(team_1)

    expect(current_path).to eq("/fantasy_teams/#{team_1.id}")
    expect(page).to have_content("#{team_1.name}")
    expect(page).to have_content("#{team_1.owner}")
    expect(page).to have_content("#{team_1.players.first.display_name}")
    expect(page).to have_content("#{team_1.players.last.display_name}")
  end

  it "can click links to player pages" do
    team_1 = create(:GoT)
    rick = create(:rick)
    morty = create(:morty)
    team_1.players << rick << morty

    visit fantasy_team_path(team_1)

    within ".player_#{rick.id}" do
      click_on rick.display_name
    end

    expect(current_path).to eq("/players/#{rick.id}")
  end
end
