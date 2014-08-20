class FeedingsController < ApplicationController
  def create
    @adoption = current_user.adoption
    @adoption.feed
    redirect_to :dashboard
  end
end
