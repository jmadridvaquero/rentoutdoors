class AddCoordinatesToEquipment < ActiveRecord::Migration[5.2]
  def change
    add_column :equipment, :latitude, :float
    add_column :equipment, :longitude, :float
    add_column :equipment, :address, :string
  end
end
