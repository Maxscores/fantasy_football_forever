describe "User can add favorite players to favorites" do
  it "adds player to dashboard" do
    user = create(:user)
    allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(user)

    rick = create(:rick)
    rick.season_stats << create(:season_stat, player_id: rick.id)

    visit "/players"

    within ".player_#{rick.id}" do
      click_on "Add to Favs"
    end

    expect(current_path).to eq("/players")
    expect(page).to have_content("#{rick.display_name}")
  end
end
