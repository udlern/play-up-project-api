class CreateEquipment < ActiveRecord::Migration[6.1]
  def change
    create_table :equipment do |t|
      t.string :equipment_title
      t.references :game
    end
  end
end
