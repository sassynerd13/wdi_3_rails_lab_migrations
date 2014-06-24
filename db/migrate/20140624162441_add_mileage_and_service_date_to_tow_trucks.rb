class AddMileageAndServiceDateToTowTrucks < ActiveRecord::Migration
  def change
    change_table :tow_trucks do |t|
      t.integer :mileage
      t.date :serviced_on
    end
  end
end
