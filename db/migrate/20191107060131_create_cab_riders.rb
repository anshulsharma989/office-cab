class CreateCabRiders < ActiveRecord::Migration[6.0]
  def change
    create_table :cab_riders do |t|
      t.references :cab, null: false, foreign_key: true
      t.references :rider, null: false, foreign_key: true

      t.timestamps
    end
  end
end
