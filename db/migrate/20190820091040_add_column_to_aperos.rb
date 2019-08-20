class AddColumnToAperos < ActiveRecord::Migration[5.2]
  def change
    add_column :aperos, :photo, :string
    add_column :aperos, :ambiance, :string
    add_column :aperos, :title, :string
    add_column :aperos, :capacity, :numeric
  end
end
