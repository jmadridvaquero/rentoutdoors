class RemoveColumsToEquipment < ActiveRecord::Migration[5.2]
  def change
    remove_column :equipment, :photo
  end
end
