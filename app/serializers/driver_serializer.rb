class DriverSerializer < ActiveModel::Serializer
  attributes :id, :name, :age, :username, :country, :car, :bio
end
