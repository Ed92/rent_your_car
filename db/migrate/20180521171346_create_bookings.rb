class CreateBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :bookings do |t|
      t.integer :price
      t.string :address
      t.date :start_date
      t.date :end_date
      t.boolean :booking_confirmation
      t.timestamps
    end
  end
end
