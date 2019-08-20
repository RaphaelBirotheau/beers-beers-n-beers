class ChangeDateToBeDatetimeInAperos < ActiveRecord::Migration[5.2]
  def change
    remove_column :aperos, :date
    add_column :aperos, :date, :datetime
  end
end
