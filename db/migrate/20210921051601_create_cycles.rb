class CreateCycles < ActiveRecord::Migration[6.1]
  def change
    create_table :cycles do |t|
      t.integer :cyclenumber

    end
  end
end
