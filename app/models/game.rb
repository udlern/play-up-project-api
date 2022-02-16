class Game < ApplicationRecord
    validates :location, uniqueness: true

    has_many :users_games
    has_many :users, through: :users_games
 
end
