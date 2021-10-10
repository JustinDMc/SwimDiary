class CreateWorkoutBreakdowns < ActiveRecord::Migration[6.1]
  def change
    create_table :workout_breakdowns do |t|
      t.integer :workout_id 
      t.string :warmupBD
      t.string :presetBD 
      t.string :mainsetBD 
      t.string :warmdownBD
     
    end
  end
end
