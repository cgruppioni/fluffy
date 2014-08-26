class AnimalsController < ApplicationController
  def new
    @animal = Animal.new
  end

  def create
    @animal = current_user.animals.new(animal_params)

    if @animal.save
      redirect_to :animals
    else
      render :new
    end
  end

  def show
    @animal = Animal.find(params[:id])
  end

  def edit
    @animal = Animal.find(params[:id])
  end

  def update
    @animal = Animal.find(params[:id])

    if @animal.update(animal_params)
      redirect_to @animal
    else
      render :edit
    end
  end

  def destroy
    @animal = Animal.find(params[:id])
    @animal.destroy
    redirect_to :back
  end

  def index
    @animals = current_user.animals
  end

  private

  def animal_params
    params.require(:animal).permit(
      :name,
      :mammal_type,
      :age,
      :breed,
      :personality,
      :biography,
      :image
    )
  end
end
