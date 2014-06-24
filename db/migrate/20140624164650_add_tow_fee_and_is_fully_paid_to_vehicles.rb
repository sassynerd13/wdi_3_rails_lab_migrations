class AddTowFeeAndIsFullyPaidToVehicles < ActiveRecord::Migration
  def change
    change_table :vehicles do |t|
      t.decimal :tow_fee
      t.boolean :is_fully_paid
      t.timestamps
    end
  end
end
