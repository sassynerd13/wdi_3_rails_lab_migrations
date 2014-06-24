class CreateVehicles < ActiveRecord::Migration
  def change
    create_table :vehicles do |t|

    t.text :make, :model, :color
    t.integer :year
    t.text :vin, null: false
    t.date :acquired_on
    t.text :notes
    t.boolean :is_tow_truck

    t.index :vin, unique: true
    end
  end
end
