class FeedingsController < ApplicationController
  def create
    @adoption = Adoption.find(params[:adoption_id])
  
    if @adoption.feed_counter <= 2
      @adoption.update_attributes(score: (@adoption.score + 25), money_owed: (@adoption.money_owed + 0.4), feed_counter: (@adoption.feed_counter += 1))
    end
    redirect_to :back
  end
end
