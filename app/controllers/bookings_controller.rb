class BookingsController < ApplicationController
  before_action :set_pet, only: [:create, :new]

  def index
    @bookings = policy_scope(Booking)
  end

  def new
    @booking = Booking.new
    authorize @booking
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.pet = @pet
    @booking.total_price = @booking.pet.price * (@booking.end_date - @booking.start_date + 1)
    authorize @booking
    @booking.save
    if @booking.save
      redirect_to root_path
    else
      render
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:pet_id, :user_id, :start_date, :end_date, :total_price)
  end

  def set_pet
    @pet = Pet.find(params[:pet_id])
  end
end
