describe SeasonStat do
  describe "instance methods" do
    it ".points_scored" do
      player = create(:rick)
      season_stat = SeasonStat.new(games_played: 16,
                                   completions: 0,
                                   completion_percentage: 0,
                                   attempts: 0,
                                   passing_yards: 100,
                                   average_yards_per_attempt: 0,
                                   passing_touchdowns: 1,
                                   interceptions: 0,
                                   fumbles: 0,
                                   rushing_attempts: 0,
                                   rushing_yards: 0,
                                   average_yards_per_carry: 0,
                                   rushing_touchdowns: 0,
                                   pass_receptions: 0,
                                   receiving_yards: 0,
                                   average_yards_per_reception: 0,
                                   receiving_touchdowns: 0,
                                   field_goals_made: 0,
                                   field_goals_attempted: 0,
                                   field_goal_percentage: 0,
                                   extra_point_made: 0,
                                   extra_point_attempted: 0,
                                   extra_point_percentage: 0,
                                   player_id: player.id,
                                   season: 2016
                       )

      expect(season_stat.points_scored).to eq(8)
    end
  end

  describe "relationships" do
    it "belongs to player" do
      season_stat = SeasonStat.new()

      expect(season_stat).to respond_to(:player)
    end
  end

  describe "validations" do
    it "is valid" do
      player = create(:rick)
      season_stat = SeasonStat.new(games_played: 16,
                                   completions: 0,
                                   completion_percentage: 0,
                                   attempts: 0,
                                   passing_yards: 0,
                                   average_yards_per_attempt: 0,
                                   passing_touchdowns: 0,
                                   interceptions: 0,
                                   fumbles: 0,
                                   rushing_attempts: 0,
                                   rushing_yards: 0,
                                   average_yards_per_carry: 0,
                                   rushing_touchdowns: 0,
                                   pass_receptions: 0,
                                   receiving_yards: 0,
                                   average_yards_per_reception: 0,
                                   receiving_touchdowns: 0,
                                   field_goals_made: 0,
                                   field_goals_attempted: 0,
                                   field_goal_percentage: 0,
                                   extra_point_made: 0,
                                   extra_point_attempted: 0,
                                   extra_point_percentage: 0,
                                   player_id: player.id,
                                   season: 2016
                       )

      expect(season_stat).to be_valid
    end

    it "is invalid without games played" do
      player = create(:rick)
      season_stat = SeasonStat.new(completions: 0,
                                   completion_percentage: 0,
                                   attempts: 0,
                                   passing_yards: 0,
                                   average_yards_per_attempt: 0,
                                   passing_touchdowns: 0,
                                   interceptions: 0,
                                   fumbles: 0,
                                   rushing_attempts: 0,
                                   rushing_yards: 0,
                                   average_yards_per_carry: 0,
                                   rushing_touchdowns: 0,
                                   pass_receptions: 0,
                                   receiving_yards: 0,
                                   average_yards_per_reception: 0,
                                   receiving_touchdowns: 0,
                                   field_goals_made: 0,
                                   field_goals_attempted: 0,
                                   field_goal_percentage: 0,
                                   extra_point_made: 0,
                                   extra_point_attempted: 0,
                                   extra_point_percentage: 0,
                                   player_id: player.id,
                                   season: 2016
                       )

      expect(season_stat).to be_invalid
    end

    it "is invalid without completions" do
      player = create(:rick)
      season_stat = SeasonStat.new(games_played: 16,
                                   completion_percentage: 0,
                                   attempts: 0,
                                   passing_yards: 0,
                                   average_yards_per_attempt: 0,
                                   passing_touchdowns: 0,
                                   interceptions: 0,
                                   fumbles: 0,
                                   rushing_attempts: 0,
                                   rushing_yards: 0,
                                   average_yards_per_carry: 0,
                                   rushing_touchdowns: 0,
                                   pass_receptions: 0,
                                   receiving_yards: 0,
                                   average_yards_per_reception: 0,
                                   receiving_touchdowns: 0,
                                   field_goals_made: 0,
                                   field_goals_attempted: 0,
                                   field_goal_percentage: 0,
                                   extra_point_made: 0,
                                   extra_point_attempted: 0,
                                   extra_point_percentage: 0,
                                   player_id: player.id,
                                   season: 2016
                       )

      expect(season_stat).to be_invalid
    end

    it "is invalid without completion percentage" do
      player = create(:rick)
      season_stat = SeasonStat.new(games_played: 16,
                                   completions: 0,
                                   attempts: 0,
                                   passing_yards: 0,
                                   average_yards_per_attempt: 0,
                                   passing_touchdowns: 0,
                                   interceptions: 0,
                                   fumbles: 0,
                                   rushing_attempts: 0,
                                   rushing_yards: 0,
                                   average_yards_per_carry: 0,
                                   rushing_touchdowns: 0,
                                   pass_receptions: 0,
                                   receiving_yards: 0,
                                   average_yards_per_reception: 0,
                                   receiving_touchdowns: 0,
                                   field_goals_made: 0,
                                   field_goals_attempted: 0,
                                   field_goal_percentage: 0,
                                   extra_point_made: 0,
                                   extra_point_attempted: 0,
                                   extra_point_percentage: 0,
                                   player_id: player.id,
                                   season: 2016
                       )

      expect(season_stat).to be_invalid
    end

    it "is invalid without attempts" do
      player = create(:rick)
      season_stat = SeasonStat.new(games_played: 16,
                                   completions: 0,
                                   completion_percentage: 0,
                                   passing_yards: 0,
                                   average_yards_per_attempt: 0,
                                   passing_touchdowns: 0,
                                   interceptions: 0,
                                   fumbles: 0,
                                   rushing_attempts: 0,
                                   rushing_yards: 0,
                                   average_yards_per_carry: 0,
                                   rushing_touchdowns: 0,
                                   pass_receptions: 0,
                                   receiving_yards: 0,
                                   average_yards_per_reception: 0,
                                   receiving_touchdowns: 0,
                                   field_goals_made: 0,
                                   field_goals_attempted: 0,
                                   field_goal_percentage: 0,
                                   extra_point_made: 0,
                                   extra_point_attempted: 0,
                                   extra_point_percentage: 0,
                                   player_id: player.id,
                                   season: 2016
                       )

      expect(season_stat).to be_invalid
    end

    it "is invalid without passing yards" do
      player = create(:rick)
      season_stat = SeasonStat.new(games_played: 16,
                                   completions: 0,
                                   completion_percentage: 0,
                                   attempts: 0,
                                   average_yards_per_attempt: 0,
                                   passing_touchdowns: 0,
                                   interceptions: 0,
                                   fumbles: 0,
                                   rushing_attempts: 0,
                                   rushing_yards: 0,
                                   average_yards_per_carry: 0,
                                   rushing_touchdowns: 0,
                                   pass_receptions: 0,
                                   receiving_yards: 0,
                                   average_yards_per_reception: 0,
                                   receiving_touchdowns: 0,
                                   field_goals_made: 0,
                                   field_goals_attempted: 0,
                                   field_goal_percentage: 0,
                                   extra_point_made: 0,
                                   extra_point_attempted: 0,
                                   extra_point_percentage: 0,
                                   player_id: player.id,
                                   season: 2016
                       )

      expect(season_stat).to be_invalid
    end

    it "is invalid without average yars per attempt" do
      player = create(:rick)
      season_stat = SeasonStat.new(games_played: 16,
                                   completions: 0,
                                   completion_percentage: 0,
                                   attempts: 0,
                                   passing_yards: 0,
                                   passing_touchdowns: 0,
                                   interceptions: 0,
                                   fumbles: 0,
                                   rushing_attempts: 0,
                                   rushing_yards: 0,
                                   average_yards_per_carry: 0,
                                   rushing_touchdowns: 0,
                                   pass_receptions: 0,
                                   receiving_yards: 0,
                                   average_yards_per_reception: 0,
                                   receiving_touchdowns: 0,
                                   field_goals_made: 0,
                                   field_goals_attempted: 0,
                                   field_goal_percentage: 0,
                                   extra_point_made: 0,
                                   extra_point_attempted: 0,
                                   extra_point_percentage: 0,
                                   player_id: player.id,
                                   season: 2016
                       )

      expect(season_stat).to be_invalid
    end

    it "is invalid without passing touchdowns" do
      player = create(:rick)
      season_stat = SeasonStat.new(games_played: 16,
                                   completions: 0,
                                   completion_percentage: 0,
                                   attempts: 0,
                                   passing_yards: 0,
                                   average_yards_per_attempt: 0,
                                   interceptions: 0,
                                   fumbles: 0,
                                   rushing_attempts: 0,
                                   rushing_yards: 0,
                                   average_yards_per_carry: 0,
                                   rushing_touchdowns: 0,
                                   pass_receptions: 0,
                                   receiving_yards: 0,
                                   average_yards_per_reception: 0,
                                   receiving_touchdowns: 0,
                                   field_goals_made: 0,
                                   field_goals_attempted: 0,
                                   field_goal_percentage: 0,
                                   extra_point_made: 0,
                                   extra_point_attempted: 0,
                                   extra_point_percentage: 0,
                                   player_id: player.id,
                                   season: 2016
                       )

      expect(season_stat).to be_invalid
    end

    it "is invalid without interceptions" do
      player = create(:rick)
      season_stat = SeasonStat.new(games_played: 16,
                                   completions: 0,
                                   completion_percentage: 0,
                                   attempts: 0,
                                   passing_yards: 0,
                                   average_yards_per_attempt: 0,
                                   passing_touchdowns: 0,
                                   fumbles: 0,
                                   rushing_attempts: 0,
                                   rushing_yards: 0,
                                   average_yards_per_carry: 0,
                                   rushing_touchdowns: 0,
                                   pass_receptions: 0,
                                   receiving_yards: 0,
                                   average_yards_per_reception: 0,
                                   receiving_touchdowns: 0,
                                   field_goals_made: 0,
                                   field_goals_attempted: 0,
                                   field_goal_percentage: 0,
                                   extra_point_made: 0,
                                   extra_point_attempted: 0,
                                   extra_point_percentage: 0,
                                   player_id: player.id,
                                   season: 2016
                       )

      expect(season_stat).to be_invalid
    end

    it "is invalid without fumbles" do
      player = create(:rick)
      season_stat = SeasonStat.new(games_played: 16,
                                   completions: 0,
                                   completion_percentage: 0,
                                   attempts: 0,
                                   passing_yards: 0,
                                   average_yards_per_attempt: 0,
                                   passing_touchdowns: 0,
                                   interceptions: 0,
                                   rushing_attempts: 0,
                                   rushing_yards: 0,
                                   average_yards_per_carry: 0,
                                   rushing_touchdowns: 0,
                                   pass_receptions: 0,
                                   receiving_yards: 0,
                                   average_yards_per_reception: 0,
                                   receiving_touchdowns: 0,
                                   field_goals_made: 0,
                                   field_goals_attempted: 0,
                                   field_goal_percentage: 0,
                                   extra_point_made: 0,
                                   extra_point_attempted: 0,
                                   extra_point_percentage: 0,
                                   player_id: player.id,
                                   season: 2016
                   )

      expect(season_stat).to be_invalid
    end

    it "is invalid without rushing attempts" do
      player = create(:rick)
      season_stat = SeasonStat.new(games_played: 16,
                                   completions: 0,
                                   completion_percentage: 0,
                                   attempts: 0,
                                   passing_yards: 0,
                                   average_yards_per_attempt: 0,
                                   passing_touchdowns: 0,
                                   interceptions: 0,
                                   fumbles: 0,
                                   rushing_yards: 0,
                                   average_yards_per_carry: 0,
                                   rushing_touchdowns: 0,
                                   pass_receptions: 0,
                                   receiving_yards: 0,
                                   average_yards_per_reception: 0,
                                   receiving_touchdowns: 0,
                                   field_goals_made: 0,
                                   field_goals_attempted: 0,
                                   field_goal_percentage: 0,
                                   extra_point_made: 0,
                                   extra_point_attempted: 0,
                                   extra_point_percentage: 0,
                                   player_id: player.id,
                                   season: 2016
                       )

      expect(season_stat).to be_invalid
    end

    it "is invalid without rushing yards" do
      player = create(:rick)
      season_stat = SeasonStat.new(games_played: 16,
                                   completions: 0,
                                   completion_percentage: 0,
                                   attempts: 0,
                                   passing_yards: 0,
                                   average_yards_per_attempt: 0,
                                   passing_touchdowns: 0,
                                   interceptions: 0,
                                   fumbles: 0,
                                   rushing_attempts: 0,
                                   average_yards_per_carry: 0,
                                   rushing_touchdowns: 0,
                                   pass_receptions: 0,
                                   receiving_yards: 0,
                                   average_yards_per_reception: 0,
                                   receiving_touchdowns: 0,
                                   field_goals_made: 0,
                                   field_goals_attempted: 0,
                                   field_goal_percentage: 0,
                                   extra_point_made: 0,
                                   extra_point_attempted: 0,
                                   extra_point_percentage: 0,
                                   player_id: player.id,
                                   season: 2016
                       )

      expect(season_stat).to be_invalid
    end

    it "is invalid without average yards per carry" do
      player = create(:rick)
      season_stat = SeasonStat.new(games_played: 16,
                                   completions: 0,
                                   completion_percentage: 0,
                                   attempts: 0,
                                   passing_yards: 0,
                                   average_yards_per_attempt: 0,
                                   passing_touchdowns: 0,
                                   interceptions: 0,
                                   fumbles: 0,
                                   rushing_attempts: 0,
                                   rushing_yards: 0,
                                   rushing_touchdowns: 0,
                                   pass_receptions: 0,
                                   receiving_yards: 0,
                                   average_yards_per_reception: 0,
                                   receiving_touchdowns: 0,
                                   field_goals_made: 0,
                                   field_goals_attempted: 0,
                                   field_goal_percentage: 0,
                                   extra_point_made: 0,
                                   extra_point_attempted: 0,
                                   extra_point_percentage: 0,
                                   player_id: player.id,
                                   season: 2016
                       )

      expect(season_stat).to be_invalid
    end

    it "is invalid without rushing touchdowns" do
      player = create(:rick)
      season_stat = SeasonStat.new(games_played: 16,
                                   completions: 0,
                                   completion_percentage: 0,
                                   attempts: 0,
                                   passing_yards: 0,
                                   average_yards_per_attempt: 0,
                                   passing_touchdowns: 0,
                                   interceptions: 0,
                                   fumbles: 0,
                                   rushing_attempts: 0,
                                   rushing_yards: 0,
                                   average_yards_per_carry: 0,
                                   pass_receptions: 0,
                                   receiving_yards: 0,
                                   average_yards_per_reception: 0,
                                   receiving_touchdowns: 0,
                                   field_goals_made: 0,
                                   field_goals_attempted: 0,
                                   field_goal_percentage: 0,
                                   extra_point_made: 0,
                                   extra_point_attempted: 0,
                                   extra_point_percentage: 0,
                                   player_id: player.id,
                                   season: 2016
                       )

      expect(season_stat).to be_invalid
    end

    it "is invalid without pass receptions" do
      player = create(:rick)
      season_stat = SeasonStat.new(games_played: 16,
                                   completions: 0,
                                   completion_percentage: 0,
                                   attempts: 0,
                                   passing_yards: 0,
                                   average_yards_per_attempt: 0,
                                   passing_touchdowns: 0,
                                   interceptions: 0,
                                   fumbles: 0,
                                   rushing_attempts: 0,
                                   rushing_yards: 0,
                                   average_yards_per_carry: 0,
                                   rushing_touchdowns: 0,
                                   receiving_yards: 0,
                                   average_yards_per_reception: 0,
                                   receiving_touchdowns: 0,
                                   field_goals_made: 0,
                                   field_goals_attempted: 0,
                                   field_goal_percentage: 0,
                                   extra_point_made: 0,
                                   extra_point_attempted: 0,
                                   extra_point_percentage: 0,
                                   player_id: player.id,
                                   season: 2016
                       )

      expect(season_stat).to be_invalid
    end

    it "is invalid without receiving yards" do
      player = create(:rick)
      season_stat = SeasonStat.new(games_played: 16,
                                   completions: 0,
                                   completion_percentage: 0,
                                   attempts: 0,
                                   passing_yards: 0,
                                   average_yards_per_attempt: 0,
                                   passing_touchdowns: 0,
                                   interceptions: 0,
                                   fumbles: 0,
                                   rushing_attempts: 0,
                                   rushing_yards: 0,
                                   average_yards_per_carry: 0,
                                   rushing_touchdowns: 0,
                                   pass_receptions: 0,
                                   average_yards_per_reception: 0,
                                   receiving_touchdowns: 0,
                                   field_goals_made: 0,
                                   field_goals_attempted: 0,
                                   field_goal_percentage: 0,
                                   extra_point_made: 0,
                                   extra_point_attempted: 0,
                                   extra_point_percentage: 0,
                                   player_id: player.id,
                                   season: 2016
                       )

      expect(season_stat).to be_invalid
    end

    it "is invalid without average yards per reception" do
      player = create(:rick)
      season_stat = SeasonStat.new(games_played: 16,
                                   completions: 0,
                                   completion_percentage: 0,
                                   attempts: 0,
                                   passing_yards: 0,
                                   average_yards_per_attempt: 0,
                                   passing_touchdowns: 0,
                                   interceptions: 0,
                                   fumbles: 0,
                                   rushing_attempts: 0,
                                   rushing_yards: 0,
                                   average_yards_per_carry: 0,
                                   rushing_touchdowns: 0,
                                   pass_receptions: 0,
                                   receiving_yards: 0,
                                   receiving_touchdowns: 0,
                                   field_goals_made: 0,
                                   field_goals_attempted: 0,
                                   field_goal_percentage: 0,
                                   extra_point_made: 0,
                                   extra_point_attempted: 0,
                                   extra_point_percentage: 0,
                                   player_id: player.id,
                                   season: 2016
                       )

      expect(season_stat).to be_invalid
    end

    it "is invalid without receiving touchdowns" do
      player = create(:rick)
      season_stat = SeasonStat.new(games_played: 16,
                                   completions: 0,
                                   completion_percentage: 0,
                                   attempts: 0,
                                   passing_yards: 0,
                                   average_yards_per_attempt: 0,
                                   passing_touchdowns: 0,
                                   interceptions: 0,
                                   fumbles: 0,
                                   rushing_attempts: 0,
                                   rushing_yards: 0,
                                   average_yards_per_carry: 0,
                                   rushing_touchdowns: 0,
                                   pass_receptions: 0,
                                   receiving_yards: 0,
                                   average_yards_per_reception: 0,
                                   field_goals_made: 0,
                                   field_goals_attempted: 0,
                                   field_goal_percentage: 0,
                                   extra_point_made: 0,
                                   extra_point_attempted: 0,
                                   extra_point_percentage: 0,
                                   player_id: player.id,
                                   season: 2016
                       )

      expect(season_stat).to be_invalid
    end

    it "is invalid without field goals made" do
      player = create(:rick)
      season_stat = SeasonStat.new(games_played: 16,
                                   completions: 0,
                                   completion_percentage: 0,
                                   attempts: 0,
                                   passing_yards: 0,
                                   average_yards_per_attempt: 0,
                                   passing_touchdowns: 0,
                                   interceptions: 0,
                                   fumbles: 0,
                                   rushing_attempts: 0,
                                   rushing_yards: 0,
                                   average_yards_per_carry: 0,
                                   rushing_touchdowns: 0,
                                   pass_receptions: 0,
                                   receiving_yards: 0,
                                   average_yards_per_reception: 0,
                                   receiving_touchdowns: 0,
                                   field_goals_attempted: 0,
                                   field_goal_percentage: 0,
                                   extra_point_made: 0,
                                   extra_point_attempted: 0,
                                   extra_point_percentage: 0,
                                   player_id: player.id,
                                   season: 2016
                       )

      expect(season_stat).to be_invalid
    end

    it "is invalid without field goals attempted" do
      player = create(:rick)
      season_stat = SeasonStat.new(games_played: 16,
                                   completions: 0,
                                   completion_percentage: 0,
                                   attempts: 0,
                                   passing_yards: 0,
                                   average_yards_per_attempt: 0,
                                   passing_touchdowns: 0,
                                   interceptions: 0,
                                   fumbles: 0,
                                   rushing_attempts: 0,
                                   rushing_yards: 0,
                                   average_yards_per_carry: 0,
                                   rushing_touchdowns: 0,
                                   pass_receptions: 0,
                                   receiving_yards: 0,
                                   average_yards_per_reception: 0,
                                   receiving_touchdowns: 0,
                                   field_goals_made: 0,
                                   field_goal_percentage: 0,
                                   extra_point_made: 0,
                                   extra_point_attempted: 0,
                                   extra_point_percentage: 0,
                                   player_id: player.id,
                                   season: 2016
                       )

      expect(season_stat).to be_invalid
    end

    it "is invalid without field goal percentage" do
      player = create(:rick)
      season_stat = SeasonStat.new(games_played: 16,
                                   completions: 0,
                                   completion_percentage: 0,
                                   attempts: 0,
                                   passing_yards: 0,
                                   average_yards_per_attempt: 0,
                                   passing_touchdowns: 0,
                                   interceptions: 0,
                                   fumbles: 0,
                                   rushing_attempts: 0,
                                   rushing_yards: 0,
                                   average_yards_per_carry: 0,
                                   rushing_touchdowns: 0,
                                   pass_receptions: 0,
                                   receiving_yards: 0,
                                   average_yards_per_reception: 0,
                                   receiving_touchdowns: 0,
                                   field_goals_made: 0,
                                   field_goals_attempted: 0,
                                   extra_point_made: 0,
                                   extra_point_attempted: 0,
                                   extra_point_percentage: 0,
                                   player_id: player.id,
                                   season: 2016
                       )

      expect(season_stat).to be_invalid
    end

    it "is invalid without extra point made" do
      player = create(:rick)
      season_stat = SeasonStat.new(games_played: 16,
                                   completions: 0,
                                   completion_percentage: 0,
                                   attempts: 0,
                                   passing_yards: 0,
                                   average_yards_per_attempt: 0,
                                   passing_touchdowns: 0,
                                   interceptions: 0,
                                   fumbles: 0,
                                   rushing_attempts: 0,
                                   rushing_yards: 0,
                                   average_yards_per_carry: 0,
                                   rushing_touchdowns: 0,
                                   pass_receptions: 0,
                                   receiving_yards: 0,
                                   average_yards_per_reception: 0,
                                   receiving_touchdowns: 0,
                                   field_goals_made: 0,
                                   field_goals_attempted: 0,
                                   field_goal_percentage: 0,
                                   extra_point_attempted: 0,
                                   extra_point_percentage: 0,
                                   player_id: player.id,
                                   season: 2016
                       )

      expect(season_stat).to be_invalid
    end

    it "is invalid without extra point attempted" do
      player = create(:rick)
      season_stat = SeasonStat.new(games_played: 16,
                                   completions: 0,
                                   completion_percentage: 0,
                                   attempts: 0,
                                   passing_yards: 0,
                                   average_yards_per_attempt: 0,
                                   passing_touchdowns: 0,
                                   interceptions: 0,
                                   fumbles: 0,
                                   rushing_attempts: 0,
                                   rushing_yards: 0,
                                   average_yards_per_carry: 0,
                                   rushing_touchdowns: 0,
                                   pass_receptions: 0,
                                   receiving_yards: 0,
                                   average_yards_per_reception: 0,
                                   receiving_touchdowns: 0,
                                   field_goals_made: 0,
                                   field_goals_attempted: 0,
                                   field_goal_percentage: 0,
                                   extra_point_made: 0,
                                   extra_point_percentage: 0,
                                   player_id: player.id,
                                   season: 2016
                       )

      expect(season_stat).to be_invalid
    end

    it "is invalid without extra point percentage" do
      player = create(:rick)
      season_stat = SeasonStat.new(games_played: 16,
                                   completions: 0,
                                   completion_percentage: 0,
                                   attempts: 0,
                                   passing_yards: 0,
                                   average_yards_per_attempt: 0,
                                   passing_touchdowns: 0,
                                   interceptions: 0,
                                   fumbles: 0,
                                   rushing_attempts: 0,
                                   rushing_yards: 0,
                                   average_yards_per_carry: 0,
                                   rushing_touchdowns: 0,
                                   pass_receptions: 0,
                                   receiving_yards: 0,
                                   average_yards_per_reception: 0,
                                   receiving_touchdowns: 0,
                                   field_goals_made: 0,
                                   field_goals_attempted: 0,
                                   field_goal_percentage: 0,
                                   extra_point_made: 0,
                                   extra_point_attempted: 0,
                                   player_id: player.id,
                                   season: 2016
                       )

      expect(season_stat).to be_invalid
    end

    it "is invalid without player id" do
      player = create(:rick)
      season_stat = SeasonStat.new(games_played: 16,
                                   completions: 0,
                                   completion_percentage: 0,
                                   attempts: 0,
                                   passing_yards: 0,
                                   average_yards_per_attempt: 0,
                                   passing_touchdowns: 0,
                                   interceptions: 0,
                                   fumbles: 0,
                                   rushing_attempts: 0,
                                   rushing_yards: 0,
                                   average_yards_per_carry: 0,
                                   rushing_touchdowns: 0,
                                   pass_receptions: 0,
                                   receiving_yards: 0,
                                   average_yards_per_reception: 0,
                                   receiving_touchdowns: 0,
                                   field_goals_made: 0,
                                   field_goals_attempted: 0,
                                   field_goal_percentage: 0,
                                   extra_point_made: 0,
                                   extra_point_attempted: 0,
                                   extra_point_percentage: 0,
                                   season: 2016
                       )

      expect(season_stat).to be_invalid
    end

    it "is invalid without season" do
      player = create(:rick)
      season_stat = SeasonStat.new(games_played: 16,
                                   completions: 0,
                                   completion_percentage: 0,
                                   attempts: 0,
                                   passing_yards: 0,
                                   average_yards_per_attempt: 0,
                                   passing_touchdowns: 0,
                                   interceptions: 0,
                                   fumbles: 0,
                                   rushing_attempts: 0,
                                   rushing_yards: 0,
                                   average_yards_per_carry: 0,
                                   rushing_touchdowns: 0,
                                   pass_receptions: 0,
                                   receiving_yards: 0,
                                   average_yards_per_reception: 0,
                                   receiving_touchdowns: 0,
                                   field_goals_made: 0,
                                   field_goals_attempted: 0,
                                   field_goal_percentage: 0,
                                   extra_point_made: 0,
                                   extra_point_attempted: 0,
                                   extra_point_percentage: 0,
                                   player_id: player.id
                       )

      expect(season_stat).to be_invalid
    end
  end
end
