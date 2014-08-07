class User < ActiveRecord::Base
  ROLES = %w( Caregiver Shelter )
  FACILITY_TYPE = ["Humane Society", "Municipal Control Facility", "Rescue Organization", "Animal Sanctuary"]

  has_many :animals, dependent: :destroy

  validates :email, presence: true, uniqueness: true
  validates :password_digest, presence: true
  validates :name, presence: true
  validates :role, presence: true

  geocoded_by :address
  after_validation :geocode
  
  def caregiver?
    role == "Caregiver"
  end

  def shelter?
    role == "Shelter"
  end
end
