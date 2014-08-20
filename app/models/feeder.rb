class Feeder
  MAX_FEEDINGS_PER_MEAL = 3
  POINTS_FOR_FEEDING = 25
  COST_PER_FEEDING = 0.4
  MEAL_TIME = 5
  FOOD_COST = 2
  MINIMUM_CREDITS = 2

  def initialize(adoption, user)
    @adoption = adoption
    @user = user
    feed
  end

  def feed
    if hungry? && has_credits?
      @adoption.update_attributes(
        score: @adoption.score + POINTS_FOR_FEEDING,
        money_owed: @adoption.money_owed + COST_PER_FEEDING,
        feed_counter: @adoption.feed_counter.next,
        last_time_fed: Time.now
      )
      @user.update_attributes(
        credits: @user.credits - FOOD_COST
      )
    else
      reset_feed_counter
    end
  end

  def hungry?
    @adoption.feed_counter < MAX_FEEDINGS_PER_MEAL
  end

  def has_credits?
    @user.credits >= MINIMUM_CREDITS
  end

  def reset_feed_counter
    if @adoption.last_time_fed > MEAL_TIME.hours.ago
      feed_counter = 0
    end
  end
end
