class AnimalsController < ApplicationController
  def new
    @animal = Animal.new
  end

  def create
    @animal = current_user.animals.new(animal_params)

    if @animal.save
      redirect_to @animal
    else
      render :new
    end
  end

  def show
    @animal = Animal.find(params[:id])
  end

  private

  def animal_params
    params.require(:animal).permit(
      :name,
      :mammal_type,
      :age,
      :breed,
      :adjective,
      :adjective2,
      :biography
    )
  end
end
