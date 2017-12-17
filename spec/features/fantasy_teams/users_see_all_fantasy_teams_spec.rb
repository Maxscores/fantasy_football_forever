describe "When a user visits teams index" do
  it "sees all teams except free agents" do
    free_agents = create(:fantasy_team)
    team_1 = create(:GoT)
    team_2 = create(:GoT)
    team_3 = create(:GoT)

    visit fantasy_teams_path

    expect(current_path).to eq("/fantasy_teams")
    expect(page).to_not have_content(free_agents.name)
    expect(page).to have_content(team_1.name)
    expect(page).to have_content(team_1.owner)
    expect(page).to have_content(team_2.name)
    expect(page).to have_content(team_2.owner)
    expect(page).to have_content(team_3.name)
    expect(page).to have_content(team_3.owner)
  end
end
