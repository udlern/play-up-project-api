class GameSerializer < ActiveModel::Serializer
  attributes :id, :location, :start_time_and_date, :num_of_players, :game_name, :equipment, :hosted_by

  has_many :users

end
