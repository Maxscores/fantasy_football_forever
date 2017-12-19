describe "User can visit their dashboard" do
  it "they see their favorites" do
    user = create(:user)
    visit login_path
    fill_in :email, with: user.email
    fill_in :password, with: user.password
    click_on "Log In"

    rick = create(:rick)
    UserFavorite.create(user_id: user.id, player_id: rick.id)

    visit "/users/#{user.id}"

    expect(page).to have_content("Welcome, #{user.full_name}")
    expect(page).to have_content("#{rick.display_name}")
  end
end
