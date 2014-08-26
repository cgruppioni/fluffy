class Trainer
  CREDITS = 2
  POINTS = 15
  MAX_TRAINS_PER_PERIOD = 2
  TRAIN_TIME = 8

  def initialize(adoption, user)
    @adoption = adoption
    @user = user
    train
  end

  def train
    reset_train_counter
    if wants_to_train?
      @adoption.update_attributes(
        score: @adoption.score + POINTS,
        train_counter: @adoption.train_counter.next,
        last_time_trained_with: Time.now
      )
    else
      @adoption.update_attributes(
        positive_interaction_status: false
      )
    end
  end

  def wants_to_train?
    @adoption.train_counter < MAX_TRAINS_PER_PERIOD
  end

  def reset_train_counter
    if @adoption.last_time_trained_with > TRAIN_TIME.hours.ago
      @adoption.update_attributes(
      positive_interaction_status: true,
      train_counter: 0
      )
    end
  end
end
