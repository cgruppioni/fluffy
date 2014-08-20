class FeedingsController < ApplicationController
  def create
    @adoption = current_user.adoption
    Feeder.new(@adoption, current_user)
    redirect_to :dashboard
  end
end
