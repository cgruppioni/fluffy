class User < ActiveRecord::Base
  ROLES = %w( Caregiver Shelter )
  FACILITY_TYPE = ["Humane Society", "Municipal Control Facility", "Rescue Organization", "Animal Sanctuary"]

  has_many :animals, dependent: :destroy
  has_one :adoption
  has_many :payments

  validates :email, presence: true, uniqueness: true
  validates :password_digest, presence: true
  validates :name, presence: true
  validates :role, presence: true

  geocoded_by :address
  after_validation :geocode

  def shelter?
    role == "Shelter"
  end

  def caregiver?
    role == "Caregiver"
  end
end
