class DashboardsController < ApplicationController
  def show
    @animal = Animal.new
    @adoption = current_user.adoption
  end
end
