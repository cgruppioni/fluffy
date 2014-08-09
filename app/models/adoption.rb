class Adoption < ActiveRecord::Base
  belongs_to :user
  has_one :animal

  validates :user, presence: true
  validates :animal, presence: true
  validates :score, presence: true
  validates :level, presence: true
end
