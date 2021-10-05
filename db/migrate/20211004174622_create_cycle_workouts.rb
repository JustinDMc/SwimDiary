class CreateCycleWorkouts < ActiveRecord::Migration[6.1]
  def change
    create_table :cycle_workouts do |t|
      t.integer :cycle_id 
      t.integer :workout_id

    end
  end
end
