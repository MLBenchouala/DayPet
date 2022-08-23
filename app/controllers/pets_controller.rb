class PetsController < ApplicationController
  def index
    @pets = policy_scope(Pet)
  end

  def show
    authorize @pet
  end

  def new
    @pet = Pet.new
    authorize @pet # Add this line
  end

  def update
    authorize @pet
  end

  def destroy
    authorize @pet
  end

  def create
    @pet = Pet.new(pet_params)
    @pet.user = current_user
    authorize @pet # Add this line
    # @pet.save
  end

  private

  def pet_params
    params.require(:pet).permit(:sexe, :race, :age, :photo_url, :price, :user_id, :location)
  end
end
