class TrackTimesSerializer < ActiveModel::Serializer
  attributes :id, :name, :location, :length
  has_many :time_trials
end
