class CreateCabs < ActiveRecord::Migration[6.0]
  def change
    create_table :cabs do |t|
      t.references :car, null: false, foreign_key: true
      t.references :driver, null: false, foreign_key: true
      t.string :location

      t.timestamps
    end
  end
end
