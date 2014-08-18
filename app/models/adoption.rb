class Adoption < ActiveRecord::Base
  MAX_FEEDINGS_PER_MEAL = 3
  POINTS_FOR_FEEDING = 25
  COST_PER_FEEDING = 0.4
  MEAL_TIME = 5

  belongs_to :user
  has_one :animal

  validates :user_id, presence: true
  validates :animal_id, presence: true
  validates :score, presence: true
  validates :level, presence: true
  validates :feed_counter, presence: true

  def feed
    if hungry?
      update_attributes(
        score: score + POINTS_FOR_FEEDING,
        money_owed: money_owed + COST_PER_FEEDING,
        feed_counter: feed_counter.next,
        last_time_fed: Time.now
      )
    else
      reset_feed_counter
    end
  end

  def reset_feed_counter
    if updated_at > 6.hours.ago
      feed_counter = 0
    end
  end

  def hungry?
    feed_counter < MAX_FEEDINGS_PER_MEAL
  end
end
