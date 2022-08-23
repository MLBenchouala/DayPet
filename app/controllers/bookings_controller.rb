class BookingsController < ApplicationController
  before_action :set_booking, only: [:destroy]

  def new
    @booking = Booking.new
    authorize @booking
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    authorize @booking
    if @booking.save
      redirect_to booking_path(@booking)
    else
      render
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:pet_id, :user_id)
  end

  def set_booking
    @booking = booking.find(params[:id])
  end
end
