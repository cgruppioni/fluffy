class SearchesController < ApplicationController
  def show
    @users = User.near(params[:query], Search::DISTANCE).to_a
    @animals = Animal.where(user: @users)

    Rails.logger.info '*'*80
    Rails.logger.info 
    Rails.logger.info '*'*80
  end
end
