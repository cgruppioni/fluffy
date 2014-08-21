class Adoption < ActiveRecord::Base
  LEVEL_INCREMENT = 500
  
  belongs_to :user
  has_one :animal

  validates :user_id, presence: true
  validates :animal_id, presence: true
  validates :score, presence: true
  validates :level, presence: true
  validates :feed_counter, presence: true

  def level_up
     if score % LEVEL_INCREMENT == 0
       update_attributes(
       level: level.next
       )
     end
  end
end
