class AddToColumnsBookings < ActiveRecord::Migration[5.2]
  def change
    add_reference :bookings, :car, foreign_key: true
  end
end
