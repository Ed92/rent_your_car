class AddCustomColumnsToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :photo, :string
    add_column :users, :name, :string
    add_column :users, :driving_license, :boolean
    add_column :users, :date_of_birth, :date
    add_column :users, :location, :string
  end
end
