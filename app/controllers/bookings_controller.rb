class BookingsController < ApplicationController
  before_action :set_equipment, only: [:show, :destroy]

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_allowed_params)
    @user = current_user
    @booking.user = @user
    if @booking.save
      redirect_to equipment_bookings_path(@equipment)
    else
      render :new
  end

  def index
    @bookings = Booking.all
  end

  def destroy
  end

  private


  def set_equipment
    @equipment = Equipment.find(params[:equipment_id])
  end

  def booking_allowed_params
    params.require(:booking).permit(:date, :description, :equipment, :user)
  end
end
