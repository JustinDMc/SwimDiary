class Workout < ApplicationRecord
    has_many :cycle_workouts 
    has_many :cycles, through: :cycle_workouts
    has_many :workout_types 
    has_many :types, through: :workout_types
end
