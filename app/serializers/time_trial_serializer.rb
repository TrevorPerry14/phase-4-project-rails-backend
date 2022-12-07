class TimeTrialSerializer < ActiveModel::Serializer
  attributes :id, :track_id, :driver_id, :Lap_Time, :date

  def driver_id
    self.object.driver.name
  end 

  def track_id 
    self.object.track.name
  end
end
