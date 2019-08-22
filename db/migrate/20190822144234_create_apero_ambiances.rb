class CreateAperoAmbiances < ActiveRecord::Migration[5.2]
  def change
    create_table :apero_ambiances do |t|
      t.references :apero, foreign_key: true
      t.references :ambiance, foreign_key: true
      t.timestamps
    end
  end
end
