describe "Admin can vist new team form" do
  it "and it can create a new team" do
    visit new_fantasy_team_path

    fill_in "fantasy_team[name]", with: "Footballers"
    fill_in "fantasy_team[owner]", with: "Max"
    click_on "Create Fantasy team"

    expect(current_path).to eq("/fantasy_teams/#{FantasyTeam.all.last.id}")
    expect(page).to have_content("Footballers")
    expect(page).to have_content("Max")
  end
end
