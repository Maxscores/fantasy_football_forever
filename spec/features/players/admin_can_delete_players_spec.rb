describe "Admin can delete players" do
  it "and player is deleted" do
    player = create(:player)

    visit player_path(player)

    click_on "Delete"

    expect(current_path).to eq("/players")
    expect(page).to_not have_content("#{player.display_name}")
  end
end
