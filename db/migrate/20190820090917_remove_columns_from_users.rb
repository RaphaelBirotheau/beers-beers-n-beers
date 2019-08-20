class RemoveColumnsFromUsers < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :photo, :string
    remove_column :users, :ambiance, :string
    remove_column :users, :title, :string
    remove_column :users, :capacity, :numeric
  end
end
