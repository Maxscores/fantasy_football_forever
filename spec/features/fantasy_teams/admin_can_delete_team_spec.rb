describe "Admin can delete team from team index" do
  it "clicks on delete and it is removed from the database" do
    team = create(:GoT)


    visit fantasy_teams_path

    within ".team_#{team.id}" do
      click_on "Delete Team"
    end

    expect(current_path).to eq("/fantasy_teams")
    expect(page).to_not have_content("#{team.name}")
    expect(page).to_not have_content("#{team.owner}")
  end
end
