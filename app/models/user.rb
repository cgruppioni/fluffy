class User < ActiveRecord::Base
  ROLES = %w( Individual Shelter )
  
  validates :email, presence: true, uniqueness: true
  validates :password_digest, presence: true
  validates :name, presence: true
  validates :zipcode, presence: true
  validates :role, presence: true
end
