class CreateEquipment < ActiveRecord::Migration[6.1]
  def change
    create_table :equipment do |t|
      t.string :title
      t.references :game
      t.timestamps
    end
  end
end
