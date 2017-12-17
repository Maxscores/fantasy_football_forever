describe FFTeam do
  describe "relationships" do
    it "has many players" do
      ff_team = FFTeam.new()

      expect(ff_team).to respond_to(:players)
    end
  end

  describe "validations" do
    it "is valid" do
      ff_team = FFTeam.new(name: "Squancher United",
                           owner: "Max")

      expect(ff_team).to be_valid
    end

    it "is invalid without name" do
      ff_team = FFTeam.new(owner: "Max")

      expect(ff_team).to be_invalid
    end

    it "is invalid without owner" do
      ff_team = FFTeam.new(name: "Squancher United")

      expect(ff_team).to be_invalid
    end
  end
end
