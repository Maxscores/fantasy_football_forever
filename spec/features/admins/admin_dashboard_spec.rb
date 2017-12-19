describe "User visits admin dashboard" do
  context "as an admin" do
    it "can see dashboard" do
      admin = create(:admin)

      allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(admin)

      visit admin_dashboard_index_path

      expect(page).to have_content("Welcome to the Admin Dashboard")
      expect(page).to have_content("Create a New Fantasy Team")
      expect(page).to have_content("Create a New Player")
    end
  end

  context "as a user" do
    it "is given 404 page" do
      user = create(:user)

      allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(user)

      visit admin_dashboard_index_path

      expect(page).to have_content("The page you were looking for doesn't exist.")
    end
  end
end
