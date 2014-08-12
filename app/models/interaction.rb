class Interaction < ActiveRecord::Base
  has_many :plays

  validates :name, presence: true
  validates :score_increment, presence: true
end
