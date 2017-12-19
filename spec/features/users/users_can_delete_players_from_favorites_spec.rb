describe "User can remove favorite players from dashboard" do
  it "removes player from dashboard" do
    user = create(:user)
    allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(user)

    rick = create(:rick)

    visit "/players"

    within ".player_#{rick.id}" do
      click_on "Add to Favs"
    end

    within ".player_#{rick.id}" do
      click_on "Remove from Favs"
    end

    result = user.players.include?(rick)

    expect(result).to be_falsy
  end

  it "removes favorite from players page" do
    user = create(:user)
    allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(user)

    rick = create(:rick)

    visit "/players"

    within ".player_#{rick.id}" do
      click_on "Add to Favs"
    end

    visit "/players"

    within ".player_#{rick.id}" do
      click_on "Remove from Favs"
    end

    result = user.players.include?(rick)

    expect(result).to be_falsy
  end
end
