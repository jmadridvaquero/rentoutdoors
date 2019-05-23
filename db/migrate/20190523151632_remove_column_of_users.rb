class RemoveColumnOfUsers < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :zipcode
  end
end
