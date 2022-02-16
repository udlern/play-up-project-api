class UserGameSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :game_id

  has_many :users
end
