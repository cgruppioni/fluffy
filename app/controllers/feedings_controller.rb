class FeedingsController < ApplicationController
  def create
    @adoption = Adoption.find(params[:adoption_id])
    @adoption.feed
    redirect_to @adoption
  end
end
