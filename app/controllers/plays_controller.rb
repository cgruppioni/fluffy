class PlaysController < ApplicationController
  def create
    @adoption = current_user.adoption
    @adoption.play
    redirect_to :dashboard
  end
end
