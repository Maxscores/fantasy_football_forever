describe "User can add favorite players to favorites" do
  it "adds player to dashboard" do
    user = create(:user)
    visit login_path
    fill_in :email, with: user.email
    fill_in :password, with: user.password
    click_on "Log In"

    rick = create(:rick)

    visit "/players"

    within ".player_#{rick.id}" do
      click_on "Add to Favs"
    end

    expect(current_path).to eq("/users/#{user.id}")
    expect(page).to have_content("#{rick.display_name}")
  end
end
