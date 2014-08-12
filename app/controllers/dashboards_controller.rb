class DashboardsController < ApplicationController
  def show
    @adoption = current_user.adoption
    
    if @adoption
      @animal = Animal.find_by_id(@adoption.animal_id)
    else
      @animal = Animal.new
    end
  end
end
