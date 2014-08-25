class Adoption < ActiveRecord::Base
  LEVEL_UP = 500

  belongs_to :user
  has_one :animal

  validates :user_id, presence: true
  validates :animal_id, presence: true
  validates :score, presence: true
  validates :level, presence: true
  validates :feed_counter, presence: true

  def level_up
    if time_to_level_up? && only_once?
      update_attributes(
        level: level.next,
        only_once: false,
        next_level: next_level + LEVEL_UP
      )
    elsif time_to_level_up?
      reset_only_once
    end
  end

  def time_to_level_up?
    score >= next_level
  end

  def reset_only_once
    update_attributes( only_once: true )
  end
end
