class EquipmentController < ApplicationController
  def index
    @equipment = Equipment.all
  end

  def new
    @equipment =  Equipment.new
  end

  def show
    @equipment = Equipment.find(params[:id])
  end

  def create
    @equipment = Equipment.new(allowed_params)
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
  end

  def destroy
  end

  private

  def allowed_params
    params.require(:equipment).permit(:name, :sport, :description)
  end
end
