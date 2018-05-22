class AddColumnToCars < ActiveRecord::Migration[5.2]
  def change
    add_column :cars, :registration_number, :string
  end
end
