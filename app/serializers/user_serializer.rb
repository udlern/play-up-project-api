class UserSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :email, :password, :location, :url

  has_many :games
  has_many :comments
end
