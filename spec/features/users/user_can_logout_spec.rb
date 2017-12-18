describe "Logged in user clicks logout button" do
  it "and they are logged out" do
    user = create(:user)

    visit "/"

    click_on "Login"

    fill_in :email, with: user.email
    fill_in :password, with: user.password

    click_on "Log In"

    click_on "Logout"

    expect(current_path).to eq("/")
    expect(page).to_not have_content("Logout")
  end
end
