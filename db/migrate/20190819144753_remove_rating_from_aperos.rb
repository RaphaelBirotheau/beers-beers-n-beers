class RemoveRatingFromAperos < ActiveRecord::Migration[5.2]
  def change
    remove_column :aperos, :rating, :numeric
  end
end
