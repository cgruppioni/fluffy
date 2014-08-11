class SearchesController < ApplicationController
  def show
    @users = User.near(params[:query], Search::DISTANCE).to_a
    @animals = Animal.where("user_id = ? AND adopted = ?", @users, false)
  end
end
