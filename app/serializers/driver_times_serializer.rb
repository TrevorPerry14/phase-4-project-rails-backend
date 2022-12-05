class DriverTimesSerializer < ActiveModel::Serializer
  attributes :id, :name, :username, :age, :country, :car, :bio
  has_many :time_trials

  def time_trials 
    object.time_trials.order(:track_id)
  end
end
