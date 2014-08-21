class SleepsController < ApplicationController
  def create
    @adoption = current_user.adoption
    Sleeper.new(@adoption, current_user)
    redirect_to :dashboard
  end
end
