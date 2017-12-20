describe "User can delete team from team index" do
  context "as an Admin" do
    it "clicks on delete and it is removed from the database" do
      admin = create(:admin)
      team = create(:GoT)

      allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(admin)

      visit fantasy_teams_path

      within ".team_#{team.id}" do
        click_on "Delete Team"
      end

      expect(current_path).to eq("/fantasy_teams")
      expect(page).to_not have_content("#{team.name}")
      expect(page).to_not have_content("#{team.owner}")
    end
  end

  context "as a regular User" do
    it "cannot delete team" do
      user = create(:user)
      team = create(:GoT)

      allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(user)

      visit fantasy_teams_path

      expect(page).to_not have_content("Delete Team")
    end
  end
end
