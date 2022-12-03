class Track < ApplicationRecord
    has_many :time_trials 
    has_many :drivers, through: :time_trials
end
