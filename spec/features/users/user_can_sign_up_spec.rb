describe "User can signup for account" do
  context "it clicks on Login in header" do
    it "can create an account" do
      visit "/"

      click_on "Login"
      click_on "Sign Up"

      expect(current_path).to eq("/users/new")

      fill_in "user[full_name]", with: "Max Stackhouse"
      fill_in "user[email]", with: "my@email.com"
      fill_in "user[password]", with: "12345"

      click_on "Create Account"

      expect(current_path).to eq("/users/1")
      expect(page).to have_content("Welcome, Max Stackhouse")
    end
  end
end
