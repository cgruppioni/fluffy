class DashboardsController < ApplicationController
  def show
    @adoption = current_user.adoption
    @payment = Payment.new
    if current_user.adoption
      @animal = Animal.find(@adoption.animal_id)
      @adoption.level_up
      Rails.logger.info '*'*80
      Rails.logger.info "hit adoption level up in dashboard controller"
      Rails.logger.info '*'*80
    end
  end
end
