class EquipmentController < ApplicationController
  def index
    @equipment = Equipment.all
  end

  def new
    @equipment =  Equipment.new
  end

  def show
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
