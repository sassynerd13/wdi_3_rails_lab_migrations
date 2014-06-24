class RemovePickedUpOnFromVehicles < ActiveRecord::Migration
  def up
    change_table :vehicles do |t|
      t.remove :is_tow_truck
    end

    create_table :tow_trucks do |t|
      t.text :make, :model, :notes
      t.integer :year
      t.date :acquired_on
    end
  end

  def down
    change_table :vehicles do |t|
      t.boolean :is_tow_truck
    end

    drop_table :tow_trucks
  end
end
