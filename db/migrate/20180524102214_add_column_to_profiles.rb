class AddColumnToProfiles < ActiveRecord::Migration[5.2]
  def change
      add_reference :profiles, :user, foreign_key: true
      add_reference :profiles, :bookings, foreign_key: true
      add_column :profiles, :email, :string
      add_column :profiles, :name, :string
  end
end
