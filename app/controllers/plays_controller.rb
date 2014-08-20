class PlaysController < ApplicationController
  def create
    @adoption = current_user.adoption
    Play.new(@adoption, current_user)
    redirect_to :dashboard
  end
end
