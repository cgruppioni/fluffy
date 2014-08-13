class DashboardsController < ApplicationController
  def show
    @adoption = current_user.adoption
    
    if @adoption
      @animal = Animal.find(@adoption.animal_id)
    else
      @animal = Animal.new
    end
  end
end
