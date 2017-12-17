describe "Admin can edit existing players" do
  it "changes player name" do
    player = create(:rick)

    visit edit_player_path(player)

    fill_in "player[display_name]", with: "Evil Rick"

    click_button "Update Player"

    expect(current_path).to eq("/players/#{player.id}")
    expect(page).to have_content("Evil Rick")
  end
end
