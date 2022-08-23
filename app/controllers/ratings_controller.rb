class RatingsController < ApplicationController

  before_action :set_rating, only: [:show, :edit, :update, :destroy]

  def index
    @ratings = policy_scope(Rating)
  end

  def show
    authorize @rating
  end

  def new
    @rating = Rating.new
    authorize @rating
  end

  def update
    @rating.update(rating_params)
    authorize @rating
    redirect_to rating_path(@rating)
  end

  def destroy
    @rating.destroy
    redirect_to ratings_path, status: :see_other
    authorize @rating
  end

  def create
    @rating = Rating.new(rating_params)
    @rating.user = current_user
    authorize @rating
    if @rating.save
      redirect_to rating_path(@rating)
    else
      render
    end
  end

  private

  def set_rating
    @rating = rating.find(params[:id])
  end

  def rating_params
    params.require(:rating).permit(:comment, :rate, :user_id, :pet_id)
  end
end
