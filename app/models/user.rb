class User < ApplicationRecord
    has_secure_password
    has_many :users_games
    has_many :games, through: :users_games
    
    validates :email, presence: true
    validates :email, uniqueness: true
    validates :first_name, presence: true
    validates :last_name, presence: true
    validates :password, presence: true
    validates :password, length: { in: 5..10 }
end
