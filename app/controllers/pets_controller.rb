class PetsController < ApplicationController
  before_action :set_pet, only: [:show, :edit, :update, :destroy]

  def index
    @pets = policy_scope(Pet)
    if params[:query].present?
      @pets = Pet.global_search(params[:query])
    else
      @pets = Pet.all
    end
    @markers = @pets.geocoded.map do |pet|
      {
        lat: pet.latitude,
        lng: pet.longitude,
        info_window: render_to_string(partial: "info_window", locals: {pet: pet}),
        image_url: helpers.image_url("https://cdn-icons-png.flaticon.com/512/2064/2064847.png")
      }
    end
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
    redirect_to dashboard_path
    authorize @pet
  end

  def create
    @pet = Pet.new(pet_params)
    @pet.user = current_user
    authorize @pet
    if @pet.save
      redirect_to dashboard_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def pet_params
    params.require(:pet).permit(:name, :sexe, :race, :age, :photo_url, :price, :user_id, :location, :photo)
  end

  def set_pet
    @pet = Pet.find(params[:id])
  end
end
