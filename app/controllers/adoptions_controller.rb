class AdoptionsController < ApplicationController
  def new
    @animal = Animal.find(params[:animal_id])
    @adoption = Adoption.new
  end

  def create
    @animal = Animal.find(params[:animal_id])
    @adoption = Adoption.new(user_id: current_user.id, animal_id: @animal.id)
    
    if @adoption.save
      @animal.update(adopted: true)
      redirect_to root_path
    else
      render :new
    end
  end

  def show
    @adoption = Adoption.find(params[:id])
    @animal = Animal.find_by_id(@adoption.animal_id)
  end

  def destroy
    adoption = Adoption.find(params[:id])
    
    if adoption.destroy
      redirect_to root_path
    else
      render :show
    end

  end
end
