class CreateEquipmentAttachments < ActiveRecord::Migration[5.2]
  def change
    create_table :equipment_attachments do |t|
      t.string :photo
      t.references :equipment, foreign_key: true

      t.timestamps
    end
  end
end
