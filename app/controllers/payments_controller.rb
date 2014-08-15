class PaymentsController < ApplicationController
  def create
    @payment = Payment.new(payment_params)

    if @payment.save_sale
      current_user.update_attributes(
        credits: current_user.credits + @payment.credits
      )
      redirect_to root_path
    else
      @adoption = current_user.adoption
      redirect_to @adoption
    end
  end

  private

  def payment_params
    params.require(:payment).permit(
      :stripe_card_token,
      :credits
    ).merge(user_id: current_user.id)
  end
end
