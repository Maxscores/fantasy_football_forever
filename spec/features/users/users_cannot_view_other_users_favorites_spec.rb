describe "When a user tries to visit another users dashboard" do
  it "is redirected to home page with a flash message" do
    user = create(:user)
    visit login_path
    fill_in :email, with: user.email
    fill_in :password, with: user.password
    click_on "Log In"

    visit "/users/#{user.id + 1}"

    expect(current_path).to eq("/")
    expect(page).to have_content("You must be signed in to do that")
  end
end
