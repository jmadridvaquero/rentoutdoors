class EquipmentController < ApplicationController
  before_action :set_equipment, only: [:show, :edit, :destroy, :update]
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
      @equipment = policy_scope(Equipment).order(created_at: :desc)
    # @equipment = Equipment.all
    if params[:name] || params[:sport]
      @equipment = Equipment.where('name ILIKE ?', "%#{params[:name]}%")
      @equipment = @equipment.where('sport ILIKE ?', "#{params[:sport]}")
    else
      @equipment = Equipment.all
    end
  end

  def new
    @equipment =  Equipment.new
    authorize @equipment
  end

  def show
     authorize @equipment
     @marker = {lat: @equipment.latitude,lng: @equipment.longitude}
     @booking = Booking.new
  end

  def create
    @equipment = Equipment.new(equipment_allowed_params)
    authorize @equipment
    @user = current_user
    @equipment.user = @user
    if @equipment.save
      redirect_to equipment_path(@equipment), notice: "Listing was successfully created!"
    else
      render :new
    end
  end

  def edit
   authorize @equipment
  end

  def update
    if @equipment.update(equipment_allowed_params)
      redirect_to equipment_path(@equipment), notice: "Listing was successfully updated!"
    else
      render :edit
    end
    authorize @equipment
  end

  def destroy
    @equipment.destroy
    redirect_to equipment_index_path, notice: "Listing was successfully destroyed!"
    authorize @equipment
  end

  private

  def set_equipment
    @equipment = Equipment.find(params[:id])
  end

  def equipment_allowed_params
    params.require(:equipment).permit(:name, :sport, :description, :price, :photo)
  end
end
