require 'nba_stats/resources/box_score_scoring'

module NbaStats

  module BoxScoreScoring

    # The path of the boxscorescoring API
    BOX_SCORE_SCORING_PATH   = '/stats/boxscorescoring'

    # Calls the boxscorescoring API and returns a BoxScoreScoring resource.
    #
    # @param game_id [String]
    # @param range_type [Integer]
    # @param start_period [Integer]
    # @param end_period [Integer]
    # @param start_range [Integer]
    # @param end_range [Integer]
    # @return [NbaStats::Resources::BoxScoreScoring]
    def box_score_scoring(
        game_id,
        range_type=0,
        start_period=0,
        end_period=0,
        start_range=0,
        end_range=0
    )
      NbaStats::Resources::BoxScoreScoring.new(
          get(BOX_SCORE_SCORING_PATH, {
              :GameID => game_id,
              :RangeType => range_type,
              :StartPeriod => start_period,
              :EndPeriod => end_period,
              :StartRange => start_range,
              :EndRange => end_range
          })
      )
    end

  end # BoxScoreScoring

end