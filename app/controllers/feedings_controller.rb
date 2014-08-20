class FeedingsController < ApplicationController
  def create
    @adoption = Adoption.find(params[:adoption_id])
    @adoption.feed
    current_user.update_attributes(
      credits: current_user.credits - 2
    )
    redirect_to :dashboard
  end
end
