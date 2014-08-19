class FeedingsController < ApplicationController
  def create
    @adoption = Adoption.find(params[:adoption_id])
    @adoption.feed
    redirect_to :dashboard
  end
end
