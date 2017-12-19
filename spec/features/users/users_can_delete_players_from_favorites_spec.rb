describe "User can remove favorite players from dashboard" do
  it "removes player from dashboard" do
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

    within ".player_#{rick.id}" do
      click_on "Remove from Favs"
    end

    expect(current_path).to eq("/users/#{user.id}")
    expect(page).to_not have_content("#{rick.display_name}")
  end

  it "removes favorite from players page" do
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

    visit "/players"

    within ".player_#{rick.id}" do
      click_on "Remove from Favs"
    end

    expect(current_path).to eq("/users/#{user.id}")
    expect(page).to_not have_content("#{rick.display_name}")
  end
end
