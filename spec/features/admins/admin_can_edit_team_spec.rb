describe "User visits edit fantasy team" do
  context "as an Admin" do
    it "it can update the fantasy team" do
      admin = create(:admin)
      team = create(:fantasy_team)

      allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(admin)

      visit edit_admin_fantasy_team_path(team)

      fill_in "fantasy_team[name]", with: "Footballers"
      fill_in "fantasy_team[owner]", with: "Max"
      click_on "Update Fantasy team"

      expect(current_path).to eq("/fantasy_teams/#{team.id}")
      expect(page).to have_content("Footballers")
      expect(page).to_not have_content("Free Agents")
      expect(page).to have_content("Max")
    end
  end

  context "as a regular user" do
    it "cannot update the fantasy team" do
      user = create(:user)
      team = create(:fantasy_team)

      allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(user)

      visit edit_admin_fantasy_team_path(team)
    end
  end
end
