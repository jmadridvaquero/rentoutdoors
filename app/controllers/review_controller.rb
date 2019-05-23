class ReviewController < ApplicationController
  before_action :set_booking, only: [:destroy, :create]
  skip_before_action :authenticate_user!, only: [:index, :show]

  def new
    @review = Review.new
  end

  def create
    @review = Review.new(params_review)
    @review.booking = @booking
    authorize @booking
    if @review.save!
      redirect_to user_path(@booking.equipment.user)
    else
      render :new
    end
  end

  def edit
  end

  def update
  end

  def destroy
    @review.destroy
    redirect_to profile_path
    authorize @review
  end

  private

  def params_review
    params.require(:review).permit(:booking_id, :title, :content)
  end

   def set_booking
    @booking = Equipment.find(params[:booking_id])
  end
end
