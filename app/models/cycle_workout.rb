class CycleWorkout < ApplicationRecord
    belongs_to :cycle 
    belongs_to :workout
end
