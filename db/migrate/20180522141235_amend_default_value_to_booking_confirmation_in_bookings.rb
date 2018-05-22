class AmendDefaultValueToBookingConfirmationInBookings < ActiveRecord::Migration[5.2]
  def change
    change_column :bookings, :booking_confirmation, :boolean, :default => false
  end
end
