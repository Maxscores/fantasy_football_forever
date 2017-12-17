describe "Admin visits edit fantasy team" do
  it "it can update the fantasy team" do
    team = create(:fantasy_team)

    visit edit_fantasy_team_path(team)

    fill_in "fantasy_team[name]", with: "Footballers"
    fill_in "fantasy_team[owner]", with: "Max"
    click_on "Update Fantasy team"

    expect(current_path).to eq("/fantasy_teams/#{team.id}")
    expect(page).to have_content("Footballers")
    expect(page).to_not have_content("Free Agents")
    expect(page).to have_content("Owner: Max")
  end
end
