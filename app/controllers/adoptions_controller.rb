class AdoptionsController < ApplicationController
  def new
    @animal = Animal.find(params[:animal_id])
    @adoption = Adoption.new
  end

  def create
    @animal = Animal.find(params[:animal_id])
    @adoption = Adoption.new(user_id: current_user.id, animal_id: @animal.id)

    if @adoption.save
      @animal.update_attributes(adopted: true)
      redirect_to root_path
    else
      render :new
    end
  end

  def show
    @adoption = current_user.adoption
    @animal = Animal.find(@adoption.animal_id)
  end

  def destroy
    adoption = Adoption.find(params[:id])
    if adoption.destroy
      Animal.find(adoption.animal_id).update_attributes(adopted: false)
      redirect_to root_path
    else
      render :show
    end
  end

  def index
    @animals = Animal.where("user_id = ? AND adopted = ?", current_user.id, true)
  end
end
