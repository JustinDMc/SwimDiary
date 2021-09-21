class CreateWorkouts < ActiveRecord::Migration[6.1]
  def change
    create_table :workouts do |t|
      t.string :warmup
      t.string :preset 
      t.string :mainset 
      t.string :warmdown
      
    end
  end
end
