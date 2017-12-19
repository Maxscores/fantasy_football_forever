describe User do
  it "can be created as an admin" do
    user = User.create(full_name: "Max",
                       email: "Max@Stack",
                       password: "12345",
                       role: 1)

    expect(user.role).to eq("admin")
    expect(user.admin?).to be_truthy
  end
end
