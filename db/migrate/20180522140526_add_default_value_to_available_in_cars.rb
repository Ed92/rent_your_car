class AddDefaultValueToAvailableInCars < ActiveRecord::Migration[5.2]
  def change
    change_column :cars, :available, :boolean, :default => true
  end
end
