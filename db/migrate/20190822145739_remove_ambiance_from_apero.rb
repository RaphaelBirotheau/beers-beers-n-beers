class RemoveAmbianceFromApero < ActiveRecord::Migration[5.2]
  def change
    remove_column :aperos, :ambiance
  end
end
