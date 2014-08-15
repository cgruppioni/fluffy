class DashboardsController < ApplicationController
  def show
    @adoption = current_user.adoption
    @animal = Animal.find(@adoption.animal_id)
    @payment = Payment.new
  end
end
