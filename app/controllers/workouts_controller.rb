class WorkoutsController < ApplicationController

    def index 
        workouts = Workout.all 
        render json: workouts, only: [:warmup, :preset, :mainset, :warmdown], include: [:types]
    end  

end
