class PetsController < ApplicationController
  
  def index
    pets = Pet.all
    render json: pets
  end

  def create
    pet = Pet.create(pet_params)
    render json: pet
  end

  def update
    pet = Pet.update(pet_params[:id])
    pet.update(pet_params)
  end

  def destroy
  end

  private
  
  def pet_params
    params.require(:pet).permit(:name, :age, :enjoys, :image)
  end

end
