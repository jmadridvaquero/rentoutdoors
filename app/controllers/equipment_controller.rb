class EquipmentController < ApplicationController
  before_action :set_equipment, only: [:show, :edit, :destroy, :update]

  def index
    @equipment = Equipment.all
  end

  def new
    @equipment =  Equipment.new
  end

  def show
  end

  def create
    @equipment = Equipment.new(equipment_allowed_params)
    @user = current_user
    @equipment.user = @user
    if @equipment.save
      redirect_to equipment_path(@equipment)
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @equipment.update(equipment_allowed_params)
      redirect_to equipment_path(@equipment)
    else
      render :edit
    end
  end

  def destroy
    @equipment.destroy
    redirect_to equipment_index_path
  end

  private

  def set_equipment
    @equipment = Equipment.find(params[:id])
  end

  def equipment_allowed_params
    params.require(:equipment).permit(:name, :sport, :description)
  end
end
