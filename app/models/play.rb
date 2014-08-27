class Play
  POINTS = 8
  MAX_PLAYS_PER_PERIOD = 5
  PLAY_TIME = 4
  CREDITS = 2

  def initialize(adoption, user)
    @adoption = adoption
    @user = user
    play
  end

  def play
    reset_play_counter
    if wants_to_play?
      @adoption.update_attributes(
        score: @adoption.score + POINTS,
        play_counter: @adoption.play_counter.next,
        last_time_played_with: Time.now,
        positive_interaction_status: true
      )
    else
      @adoption.update_attributes(
        positive_interaction_status: false
      )
    end
  end

  def wants_to_play?
    @adoption.play_counter < MAX_PLAYS_PER_PERIOD
  end

  def reset_play_counter
    if @adoption.last_time_played_with.to_i < PLAY_TIME.hours.ago.to_i
      @adoption.update_attributes(
        positive_interaction_status: true,
        play_counter: 0
      )
    end
  end
end
