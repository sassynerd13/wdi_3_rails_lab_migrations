class AddPickedUpOnToVehicles < ActiveRecord::Migration
  def change
    change_table :vehicles do |t|
      t.date :picked_up_on
    end
  end
end
