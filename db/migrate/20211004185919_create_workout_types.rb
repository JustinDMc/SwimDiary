class CreateWorkoutTypes < ActiveRecord::Migration[6.1]
  def change
    create_table :workout_types do |t|
      t.integer :workout_id 
      t.integer :type_id  

    end
  end
end
