class DashboardsController < ApplicationController
  def show
    @adoption = current_user.adoption
    @payment = Payment.new
    if current_user.adoption
      @animal = Animal.find(@adoption.animal_id)
      @adoption.level_up
    end
  end
end
