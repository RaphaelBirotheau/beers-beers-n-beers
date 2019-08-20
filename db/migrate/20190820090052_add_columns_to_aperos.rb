class AddColumnsToAperos < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :photo, :string
    add_column :users, :ambiance, :string
    add_column :users, :title, :string
    add_column :users, :capacity, :numeric
  end
end
