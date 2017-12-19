describe Player do
  describe "relationships" do
    it "belongs to one fantasy_team" do
      player = Player.new()

      expect(player).to respond_to(:fantasy_team)
    end

    it "has many user_favorites" do
      player = Player.new()

      expect(player).to respond_to(:user_favorites)
    end

    it "has many users" do
      player = Player.new()

      expect(player).to respond_to(:users)
    end

    it "has many season stats" do
      player = Player.new()

      expect(player).to respond_to(:season_stats)
    end
  end

  describe "validations" do
    it "is valid" do
      team = create(:fantasy_team)
      player = Player.new(display_name: "Rick Sanchez",
                          active: 1,
                          jersey: 99,
                          last_name: "Sanchez",
                          first_name: "Rick",
                          twitter_handle: "@rickbitch",
                          pro_team: "DEN",
                          position: "QB",
                          height: "72 in",
                          weight: "250 lbs",
                          dob: "1985/01/06",
                          college: "Colorado State",
                          fantasy_team: team
                        )

      expect(player).to be_valid
    end

    it "is invalid without a display name" do
      player = Player.new(
                          active: 1,
                          jersey: 99,
                          last_name: "Sanchez",
                          first_name: "Rick",
                          pro_team: "DEN",
                          position: "QB",
                          height: "72 in",
                          weight: "250 lbs",
                          dob: "1985/01/06",
                          college: "Colorado State"
                        )

      expect(player).to be_invalid
    end

    it "is invalid without an active value" do
      player = Player.new(display_name: "Rick Sanchez",
                          jersey: 99,
                          last_name: "Sanchez",
                          first_name: "Rick",
                          pro_team: "DEN",
                          position: "QB",
                          height: "72 in",
                          weight: "250 lbs",
                          dob: "1985/01/06",
                          college: "Colorado State"
                        )

      expect(player).to be_invalid
    end

    it "is invalid without a jersey number" do
      player = Player.new(display_name: "Rick Sanchez",
                          active: 1,
                          last_name: "Sanchez",
                          first_name: "Rick",
                          pro_team: "DEN",
                          position: "QB",
                          height: "72 in",
                          weight: "250 lbs",
                          dob: "1985/01/06",
                          college: "Colorado State"
                        )

      expect(player).to be_invalid
    end

    it "is invalid without last name" do
      player = Player.new(display_name: "Rick Sanchez",
                          active: 1,
                          jersey: 99,
                          first_name: "Rick",
                          pro_team: "DEN",
                          position: "QB",
                          height: "72 in",
                          weight: "250 lbs",
                          dob: "1985/01/06",
                          college: "Colorado State"
                        )

      expect(player).to be_invalid
    end

    it "is invalid without first name" do
      player = Player.new(display_name: "Rick Sanchez",
                          active: 1,
                          jersey: 99,
                          last_name: "Sanchez",
                          pro_team: "DEN",
                          position: "QB",
                          height: "72 in",
                          weight: "250 lbs",
                          dob: "1985/01/06",
                          college: "Colorado State"
                        )

      expect(player).to be_invalid
    end

    it "is invalid without a pro team" do
      player = Player.new(display_name: "Rick Sanchez",
                          active: 1,
                          jersey: 99,
                          last_name: "Sanchez",
                          first_name: "Rick",
                          position: "QB",
                          height: "72 in",
                          weight: "250 lbs",
                          dob: "1985/01/06",
                          college: "Colorado State"
                        )

      expect(player).to be_invalid
    end

    it "is invalid without a position" do
      player = Player.new(display_name: "Rick Sanchez",
                          active: 1,
                          jersey: 99,
                          last_name: "Sanchez",
                          first_name: "Rick",
                          pro_team: "DEN",
                          height: "72 in",
                          weight: "250 lbs",
                          dob: "1985/01/06",
                          college: "Colorado State"
                        )

      expect(player).to be_invalid
    end

    it "is invalid without a height" do
      player = Player.new(display_name: "Rick Sanchez",
                          active: 1,
                          jersey: 99,
                          last_name: "Sanchez",
                          first_name: "Rick",
                          pro_team: "DEN",
                          position: "QB",
                          weight: "250 lbs",
                          dob: "1985/01/06",
                          college: "Colorado State"
                        )

      expect(player).to be_invalid
    end

    it "is invalid without a weight" do
      player = Player.new(display_name: "Rick Sanchez",
                          active: 1,
                          jersey: 99,
                          last_name: "Sanchez",
                          first_name: "Rick",
                          pro_team: "DEN",
                          position: "QB",
                          height: "72 in",
                          dob: "1985/01/06",
                          college: "Colorado State"
                        )

      expect(player).to be_invalid
    end

    it "is invalid without a date of birth" do
      player = Player.new(display_name: "Rick Sanchez",
                          active: 1,
                          jersey: 99,
                          last_name: "Sanchez",
                          first_name: "Rick",
                          pro_team: "DEN",
                          position: "QB",
                          height: "72 in",
                          weight: "250 lbs",
                          college: "Colorado State"
                        )

      expect(player).to be_invalid
    end

    it "is invalid without a college" do
      player = Player.new(display_name: "Rick Sanchez",
                          active: 1,
                          jersey: 99,
                          last_name: "Sanchez",
                          first_name: "Rick",
                          pro_team: "DEN",
                          position: "QB",
                          height: "72 in",
                          weight: "250 lbs",
                          dob: "1985/01/06"
                        )

      expect(player).to be_invalid
    end
  end
end
