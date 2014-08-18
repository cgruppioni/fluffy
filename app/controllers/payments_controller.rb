class PaymentsController < ApplicationController
  def new
    @payment = Payment.new
  end
  
  def create
    @payment = Payment.new(payment_params)

    if @payment.save_sale
      current_user.update_attributes(
        credits: current_user.credits + @payment.credits
      )
      @adoption = current_user.adoption
      redirect_to @adoption
    else
      redirect_to root_path
    end
  end

  private

  def payment_params
    params.require(:payment).permit(
      :stripe_customer_token,
      :credits,
      :stripe_card_token
    ).merge(user_id: current_user.id)
  end
end
