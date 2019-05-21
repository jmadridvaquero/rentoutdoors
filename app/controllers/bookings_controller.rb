class BookingsController < ApplicationController
  before_action :find_equipment, only: [:new, :create]
  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(params_booking)
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

  def params_booking
    Booking.find(params[:id])
  end

  def find_equipment
    Equipment.find(params[:id])
  end
end
