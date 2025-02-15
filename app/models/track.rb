class Track < ApplicationRecord
    has_many :time_trials, dependent: :destroy
    has_many :drivers, through: :time_trials

    def order_times
        self.time_trials.order(:Lap_Time)
    end
end
