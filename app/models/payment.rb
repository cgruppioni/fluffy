class Payment < ActiveRecord::Base
  attr_accessor :stripe_card_token
  belongs_to :user

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
      description: id,
      card: stripe_card_token
    )
    self.stripe_customer_token = customer.id
    save!
  end

  def create_stripe_charge
    Stripe::Charge.create(
      customer: stripe_customer_token,
      amount: (credits * 100).to_i,
      description: "Rails Stripe customer",
      currency: "usd"
    )
  end
end
