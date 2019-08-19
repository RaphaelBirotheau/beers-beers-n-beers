class CreateAperos < ActiveRecord::Migration[5.2]
  def change
    create_table :aperos do |t|
      t.string :date
      t.string :description
      t.string :place
      t.numeric :rating
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
