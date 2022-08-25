class PetsController < ApplicationController
  before_action :set_pet, only: [:show, :edit, :update, :destroy]

  def index
    @pets = policy_scope(Pet)
  end

  def show
    authorize @pet
    @booking = Booking.new
    authorize @booking
  end

  def new
    @pet = Pet.new
    authorize @pet
  end

  def update
    @pet.update(pet_params)
    authorize @pet
    redirect_to pet_path(@pet)
  end

  def destroy
    @pet.destroy
    redirect_to pets_path, status: :see_other
    authorize @pet
  end

  def create
    @pet = Pet.new(pet_params)
    @pet.user = current_user
    authorize @pet
    if @pet.save
      redirect_to pet_path(@pet)
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def pet_params
    params.require(:pet).permit(:name, :sexe, :race, :age, :photo_url, :price, :user_id, :location)
  end

  def set_pet
    @pet = Pet.find(params[:id])
  end
end
