class DashboardsController < ApplicationController
  def show
    @adoption = current_user.adoption
    @payment = Payment.new
    if current_user.adoption
      @animal = Animal.find(@adoption.animal_id)
    end
  end
end
