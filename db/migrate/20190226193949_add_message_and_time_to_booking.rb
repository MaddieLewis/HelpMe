class AddMessageAndTimeToBooking < ActiveRecord::Migration[5.2]
  def change
    add_column :bookings, :message, :text
    add_column :bookings, :time, :datetime
  end
end
