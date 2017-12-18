describe "User can login with form" do
  context "it enters credentials" do
    it "clicks login" do
      user = create(:user)

      visit "/"

      click_on "Login"

      fill_in :email, with: user.email
      fill_in :password, with: user.password

      click_on "Log In"

      expect(current_path).to eq(user_path(user))
      expect(page).to have_content("Welcome, Max Stackhouse")
    end
  end
end
