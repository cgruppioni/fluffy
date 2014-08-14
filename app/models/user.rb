class User < ActiveRecord::Base
  ROLES = %w( Caregiver Shelter )
  FACILITY_TYPE = ["Humane Society", "Municipal Control Facility", "Rescue Organization", "Animal Sanctuary"]

  attr_accessor :stripe_card_token

  has_many :animals, dependent: :destroy
  has_one :adoption

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

  def save_sale
    if valid?
      create_stripe_customer
      create_stripe_charge
    end

  rescue Stripe::InvalidRequestError => e
    logger.error "Stripe error while creating customer: #{e.message}"
    errors.add :base, "There was a problem with your credit card."
  end

  private

  def create_stripe_customer
    customer = Stripe::Customer.create(
      description: buyer_id, 
      card: stripe_card_token
    )
    self.stripe_customer_token = customer.id
    save!
  end

  def create_stripe_charge
    charge = Stripe::Charge.create(
      :customer    => self.stripe_customer_token,
      :amount      => (amount * 100).to_i,
      :description => 'Rails Stripe customer',
      :currency    => 'usd'
    )
  end
end
