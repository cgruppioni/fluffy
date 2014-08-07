class DashboardsController < ApplicationController
  def show
    @user = current_user
    @animal = Animal.new
  end
end
