class Adoption < ActiveRecord::Base
  LEVEL_INCREMENT = 500
  
  belongs_to :user
  has_one :animal

  validates :user_id, presence: true
  validates :animal_id, presence: true
  validates :score, presence: true
  validates :level, presence: true
  validates :feed_counter, presence: true

  attr_reader :only_once

  def level_up
    if time_to_level_up? && only_once
    update_attributes(
       level: level.next
       only_once: true
       )
    else
      reset_only_once
     end
  end

  def time_to_level_up?
    score % LEVEL_INCREMENT == 0
  end

  def reset_only_once
    update_attributes( only_once: false )
  end

end
