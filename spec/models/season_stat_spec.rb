describe SeasonStat do
  describe "relationships" do
    it "belongs to player" do
      season_stat = SeasonStat.new()

      expect(season_stat).to respond_to(:player)
    end
  end

  describe "validations" do
    it "needs tests" do

      expect(season_stat).to be_invalid
    end
  end
end
