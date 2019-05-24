class EquipmentController < ApplicationController
  before_action :set_equipment, only: [:show, :edit, :destroy, :update]
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
      @equipment = policy_scope(Equipment).order(created_at: :desc)
    # @equipment = Equipment.all
    if params[:query].present?
      @equipment = Equipment.global_search(params[:query])
    elsif params[:sport]
      @equipment =Equipment.where(sport: params[:sport])
    else
      # Show nothing
      # @equipment = []
      # Show all
      @equipment = Equipment.all
    end

    if user_signed_in?
      @equipment = @equipment.reject do |equipment|
        equipment.user.username == current_user.username
      end
    end
  end

  def new
    @equipment =  Equipment.new
    @equipment_attachment = @equipment.equipment_attachments.build
    authorize @equipment
  end

  def show
    authorize @equipment
    @marker = {
      lat: @equipment.latitude,
      lng: @equipment.longitude,
      # infoWindow: render_to_string(partial: "infowindow", locals: { equipment: @equipment })
      image_url: helpers.asset_url('rond.png')
      }
    @booking = Booking.new
    @review = Review.new
  end

  def create
    @equipment = Equipment.new(equipment_allowed_params)
    authorize @equipment
    @equipment.user = current_user

    if @equipment.save
      params[:equipment_attachments]['photo'].each do |a|
         @equipment_attachment = @equipment.equipment_attachments.create!(:photo => a, :equipment_id => @equipment.id)
      end
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
      params[:equipment_attachments]['photo'].each do |a|
         @equipment_attachment = @equipment.equipment_attachments.create!(:photo => a, :equipment_id => @equipment.id)
      end
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
    params.require(:equipment).permit(:name, :sport, :description, :address, :price, equipment_attachments_attributes: [:id, :equipment_id, :photo])
  end
end
