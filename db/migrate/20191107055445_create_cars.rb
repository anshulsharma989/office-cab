class CreateCars < ActiveRecord::Migration[6.0]
  def change
    create_table :cars do |t|
      t.string :model
      t.string :number
      t.string :year
      t.integer :capacity
      t.string :color

      t.timestamps
    end
  end
end
