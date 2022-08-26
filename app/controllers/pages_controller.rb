class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[home]

  def home
  end

  def dashboard
    @user = current_user
    @bookings_i_made = @user.bookings

    id_of_my_pets = @user.pets.pluck(:id)
    @booking_made_on_my_pets = Booking.where(pet_id: id_of_my_pets)
    @pets = Pet.where(user_id: @user.id)
  end

  def contact
  end
end
