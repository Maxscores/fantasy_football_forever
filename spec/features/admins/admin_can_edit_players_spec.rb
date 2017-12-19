describe "User can edit existing players" do
  context "as an Admin" do
    it "changes player name" do
      admin = create(:admin)
      player = create(:rick)

      allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(admin)

      visit edit_admin_player_path(player)

      fill_in "player[display_name]", with: "Evil Rick"

      click_button "Update Player"

      expect(current_path).to eq("/players/#{player.id}")
      expect(page).to have_content("Evil Rick")
    end
  end

  context "as a regular User" do
    it "cannot edit players" do
      user = create(:user)
      player = create(:player)

      allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(user)

      visit edit_admin_player_path(player)

      expect(page).to have_content("The page you were looking for doesn't exist.")
    end
  end
end
