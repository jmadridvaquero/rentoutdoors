class AddNewFieldsToUsers < ActiveRecord::Migration[5.2]
  def change
  	add_column :users, :username, :string
  	add_column :users, :zipcode, :string
  	add_column :users, :avatar_photo, :string
  end
end
