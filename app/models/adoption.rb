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
    Rails.logger.info '*'*80
    Rails.logger.info "hitting level_up in model"
    Rails.logger.info '*'*80
    if time_to_level_up? && only_once?
      Rails.logger.info '*'*80
      Rails.logger.info "Updating attributes"
      Rails.logger.info '*'*80
      update_attributes(
        level: level.next,
        only_once: true,
        next_level: next_level + LEVEL_UP
      )
    else
      reset_only_once
    end
  end

  def time_to_level_up?
    Rails.logger.info '*'*80
    Rails.logger.info "Hitting time_to_level_up?"
    Rails.logger.info '*'*80
    score >= next_level
  end

  def reset_only_once
    Rails.logger.info '*'*80
    Rails.logger.info "hitting reset_only_once"
    Rails.logger.info '*'*80
    update_attributes( only_once: false )
  end
end
