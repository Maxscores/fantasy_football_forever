describe "User can delete players" do
  context "as an Admin" do
    it "and player is deleted" do
      admin = create(:admin)
      player = create(:player)

      allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(admin)

      visit player_path(player)

      click_on "Delete"

      expect(current_path).to eq("/players")
      expect(page).to_not have_content("#{player.display_name}")
    end
  end

  context "as a regular User" do
    it "cannot delete players" do
      user = create(:user)
      player = create(:player)

      allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(user)

      visit player_path(player)

      click_on "Delete"

      expect(page).to have_content("The page you were looking for doesn't exist.")
    end
  end
end
