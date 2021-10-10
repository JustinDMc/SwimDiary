class WorkoutBreakdownsController < ApplicationController

    def index 
        workout_breakdowns = WorkoutBreakdowns.all 
        render json: workout_breakdowns
    end 

end
