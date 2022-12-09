class TrackTimesSerializer < ActiveModel::Serializer
  attributes :id, :name, :location, :length, :description
  has_many :time_trials

  def time_trials 
    object.time_trials.order(:Lap_Time)
  end
end
