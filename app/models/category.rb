class Category < ApplicationRecord
    belongs_to :game
    validates :category_title, presence: true
end
