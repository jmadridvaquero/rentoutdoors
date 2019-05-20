class CreateEquipment < ActiveRecord::Migration[5.2]
  def change
    create_table :equipment do |t|
      t.string :name
      t.text :description
      t.string :sport
      t.string :photo
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
