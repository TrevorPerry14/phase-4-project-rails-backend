class DriverTimesSerializer < ActiveModel::Serializer
  attributes :id, :name, :age, :country 
  has_many :time_trials
end
