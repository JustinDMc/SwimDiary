class Cycle < ApplicationRecord
    has_many :cycle_workouts 
    has_many :workouts, through: :cycle_workouts
end
