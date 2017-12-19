describe "User visits new team form" do
  context "As an admin" do
    it "and it can create a new team" do
      admin = create(:admin)

      allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(admin)

      visit new_admin_fantasy_team_path

      fill_in "fantasy_team[name]", with: "Footballers"
      fill_in "fantasy_team[owner]", with: "Max"
      click_on "Create Fantasy team"

      expect(current_path).to eq("/fantasy_teams/#{FantasyTeam.all.last.id}")
      expect(page).to have_content("Footballers")
      expect(page).to have_content("Max")
    end
  end


  context "as a regular User" do
    it "cannot add new teams" do
      user = create(:user)

      allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(user)

      visit new_admin_fantasy_team_path

      expect(page).to have_content("The page you were looking for doesn't exist.")
    end
  end
end
