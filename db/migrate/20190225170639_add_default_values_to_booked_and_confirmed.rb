class AddDefaultValuesToBookedAndConfirmed < ActiveRecord::Migration[5.2]
  def change
    change_column :tasks, :booked, :boolean, default: false
    change_column :bookings, :confirmed, :boolean, default: false
  end
end
