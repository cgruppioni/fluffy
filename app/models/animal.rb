class Animal < ActiveRecord::Base
  MAMMAL_TYPE = %w(Cat Dog)
  PERSONALITY = %w(Energetic Friendly Shy Playful Sweet Loyal Smart Nervous)
  GENDER = %w(Female Male)

  belongs_to :user
  belongs_to :adoption

  validates :name, presence: true
  validates :mammal_type, presence: true
  validates :age, presence: true
  validates :breed, presence: true
  validates :personality, presence: true
  validates :biography, presence: true
  
  mount_uploader :image, ImageUploader

  def self.chronological
    order("created_at DESC")
  end
end
