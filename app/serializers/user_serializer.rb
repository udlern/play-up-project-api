class UserSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :email, :password, :location

  has_many :games
end
