class CreateGames < ActiveRecord::Migration[6.1]
  def change
    create_table :games do |t|
      t.references :user
      t.string :category
      t.string :location
      t.integer :num_of_players
      t.string :equipment
      t.references :comment
      t.string :start_time_and_date
    end
  end
end
