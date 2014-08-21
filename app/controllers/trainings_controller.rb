class TrainingsController < ApplicationController
  def create
    @adoption = current_user.adoption
    Trainer.new(@adoption, current_user)
    redirect_to :dashboard
  end
end
