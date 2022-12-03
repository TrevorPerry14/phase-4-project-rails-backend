class Driver < ApplicationRecord
    has_many :time_trials 
    has_many :tracks, through: :time_trials
end
