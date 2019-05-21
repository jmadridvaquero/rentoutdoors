class AddPriceToEquipment < ActiveRecord::Migration[5.2]
  def change
    add_column :equipment, :price, :integer
  end
end
