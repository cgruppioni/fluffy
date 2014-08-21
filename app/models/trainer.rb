class Trainer
  POINTS = 15
  MAX_TRAINS_PER_PERIOD = 2
  TRAIN_TIME = 4

  def initialize(adoption, user)
    @adoption = adoption
    @user = user
    train
  end


  def train
    if wants_to_train?
      @adoption.update_attributes(
        score: @adoption.score + POINTS,
        train_counter: @adoption.train_counter.next,
        last_time_trained_with: Time.now
      )
    else
      reset_train_counter
    end
  end

  def wants_to_train?
    @adoption.train_counter < MAX_TRAINS_PER_PERIOD
  end

  def reset_train_counter
    if @adoption.last_time_trained_with > TRAIN_TIME.hours.ago
      train_counter = 0
    end
  end
end
