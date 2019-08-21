class AddCoordinatesToAperos < ActiveRecord::Migration[5.2]
  def change
    add_column :aperos, :latitude, :float
    add_column :aperos, :longitude, :float
  end
end
