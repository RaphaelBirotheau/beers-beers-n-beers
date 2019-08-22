class CreateAmbiances < ActiveRecord::Migration[5.2]
  def change
    create_table :ambiances do |t|
      t.string :name

      t.timestamps
    end
  end
end
