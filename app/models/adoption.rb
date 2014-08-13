class Adoption < ActiveRecord::Base
  MAX_FEEDINGS_PER_DAY = 2
  POINTS_FOR_FEEDING = 25
  COST_PER_FEEDING = 0.4
  INCREMENT = 1

  belongs_to :user
  has_one :animal

  validates :user_id, presence: true
  validates :animal_id, presence: true
  validates :score, presence: true
  validates :level, presence: true
  validates :feed_counter, presence: true

  def if_hungry
    if feed_counter < MAX_FEEDINGS_PER_DAY
      update_attributes(
        score: (score + POINTS_FOR_FEEDING),
        money_owed: (money_owed + COST_PER_FEEDING),
        feed_counter: (feed_counter + INCREMENT)
      )
    end
  end
end
