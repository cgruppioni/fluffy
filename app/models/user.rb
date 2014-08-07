class User < ActiveRecord::Base
  ROLES = %w( Caregiver Shelter )
  FACILITY_TYPE = ["Humane Society", "Municipal Control Facility", "Rescue Organization", "Animal Sanctuary"]

  has_many :animals

  validates :email, presence: true, uniqueness: true
  validates :password_digest, presence: true
  validates :name, presence: true
  validates :zipcode, presence: true
  validates :role, presence: true

  def individual?
    self.role == "Individual"
  end

  def shelter?
    self.role == "Shelter"
  end
end
