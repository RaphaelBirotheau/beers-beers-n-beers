class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.string :content
      t.numeric :rating
      t.references :user, foreign_key: true
      t.references :apero, foreign_key: true
      t.timestamps
    end
  end
end
