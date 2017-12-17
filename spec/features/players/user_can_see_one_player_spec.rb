describe "User visits player show page" do
  it "can see player bio" do
    rick = create(:rick)

    visit player_path(rick)

    expect(page).to have_content(rick.first_name)
    expect(page).to have_content(rick.last_name)
    expect(page).to have_content(rick.jersey)
    expect(page).to have_content(rick.pro_team)
    expect(page).to have_content(rick.position)
    expect(page).to have_content(rick.height)
    expect(page).to have_content(rick.weight)
    expect(page).to have_content(rick.dob)
    expect(page).to have_content(rick.college)
  end
end
