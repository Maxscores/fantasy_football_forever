describe "Admin can add new players to site" do
  it "can add new players" do
    team = create(:fantasy_team)

    visit new_player_path

    fill_in "player[display_name]", with: "John Elway"
    fill_in "player[active]", with: "1"
    fill_in "player[jersey]", with: "7"
    fill_in "player[last_name]", with: "Elway"
    fill_in "player[first_name]", with: "John"
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
    expect(page).to have_content("Jersey Number: 7")
    expect(page).to have_content("Free Agents")
    expect(page).to have_content("Denver Broncos")
  end
end
