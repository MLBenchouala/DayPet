class RatingsController < ApplicationController

  def create
    @rating = Rating.new(rating_params)
    # The user of the rating to create is the current user
    @rating.user = current_user
  end

  private

  def rating_params
    params.require(:rating).permit(:comment, :rate, :booking_id)
  end
end
