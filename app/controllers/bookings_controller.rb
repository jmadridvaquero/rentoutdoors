class BookingsController < ApplicationController
  before_action :set_equipment, only: [:show, :destroy, :create]
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @booking = policy_scope(Booking).order(created_at: :desc)
    @bookings = Booking.all
  end

  def show
    authorize @review
  end

  def new
    @booking = Booking.new
    authorize @booking
  end

  def create
    @booking = Booking.new(booking_allowed_params)
    authorize @booking
    @user = current_user
    @booking.user = @user
    @booking.status = 'requested'
    @booking.equipment = @equipment
    if @booking.save!
      redirect_to profile_path
    else
      render :new
    end
  end

  def destroy
    @booking.destroy
    redirect_to equipment_booking_path(@equipment)
    authorize @booking
  end

  private


  def set_equipment
    @equipment = Equipment.find(params[:equipment_id])
  end

  def booking_allowed_params
    params.require(:booking).permit(:start_date, :end_date)
  end
end
