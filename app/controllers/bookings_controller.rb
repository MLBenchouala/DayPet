class BookingsController < ApplicationController
  def index
  end

  def show
  end

  def new
  end

  def update
  end

  def destroy
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user
  end

  private

  def booking_params
    params.require(:booking).permit(:pet_id, :user_id)
  end
end
