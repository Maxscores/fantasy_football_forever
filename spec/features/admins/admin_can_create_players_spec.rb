describe "User visits new players page" do
  context "as an Admin" do
    it "can add new players" do
      admin = create(:admin)
      team = create(:fantasy_team)

      allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(admin)

      visit new_admin_player_path

      fill_in "player[last_name]", with: "Elway"
      fill_in "player[first_name]", with: "John"
      fill_in "player[display_name]", with: "John Elway"
      fill_in "player[twitter_handle]", with: "@johnelway"
      fill_in "player[active]", with: "1"
      fill_in "player[jersey]", with: "7"
      fill_in "player[pro_team]", with: "Denver Broncos"
      fill_in "player[position]", with: "QB"
      fill_in "player[height]", with: "5"
      fill_in "player[weight]", with: "67"
      fill_in "player[dob]", with: "1980-01-02"
      fill_in "player[college]", with: "Stanford"
      select "Free Agents", :from => "player[fantasy_team_id]"

      click_button "Create Player"

      expect(current_path).to eq("/players/1")
      expect(page).to have_content("John Elway")
      expect(page).to have_content("7")
      expect(page).to have_content("Free Agents")
      expect(page).to have_content("Denver Broncos")
    end
  end

  context "as a regular User" do
    it "cannot add new players" do
      user = create(:user)
      team = create(:fantasy_team)

      allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(user)

      visit new_admin_player_path

      expect(page).to have_content("The page you were looking for doesn't exist.")
    end
  end
end
