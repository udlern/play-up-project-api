class CreateUsersGames < ActiveRecord::Migration[6.1]
  def change
    create_table :users_games do |t|
      t.references :game
      t.references :user
      t.timestamps
    end
  end
end
