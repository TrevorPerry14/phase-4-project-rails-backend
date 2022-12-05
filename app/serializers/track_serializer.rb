class TrackSerializer < ActiveModel::Serializer
  attributes :id, :name, :location, :length
end
