class Driver < ApplicationRecord
    has_many :time_trials, dependent: :destroy
    has_many :tracks, through: :time_trials
end
