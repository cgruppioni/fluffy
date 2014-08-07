class Animal < ActiveRecord::Base
  MAMMAL_TYPE = %w( Cat Dog )
  belongs_to :user

  validates :name, presence: true
  validates :mammal_type, presence: true
  validates :age, presence: true
  validates :breed, presence: true
  validates :adjective, presence: true
  validates :adjective2, presence: true
  validates :biography, presence: true
end
