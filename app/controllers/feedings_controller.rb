class FeedingsController < ApplicationController
  def create
    @adoption = Adoption.find(params[:adoption_id])
    @adoption.if_hungry
    redirect_to @adoption
  end
end
