class GameSerializer < ActiveModel::Serializer
  attributes :id, :location, :start_time_and_date, :num_of_players

  has_many :users
  has_one :category
  has_many :equipment
end
