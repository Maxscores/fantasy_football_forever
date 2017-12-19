describe "User can visit their dashboard" do
  it "they see their favorites" do
    user = create(:user)
    allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(user)

    rick = create(:rick)
    UserFavorite.create(user_id: user.id, player_id: rick.id)

    visit "/users/#{user.id}"

    expect(page).to have_content("Welcome, #{user.full_name}")
    expect(page).to have_content("#{rick.display_name}")
  end
end
