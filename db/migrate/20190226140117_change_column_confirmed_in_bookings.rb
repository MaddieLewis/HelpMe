class ChangeColumnConfirmedInBookings < ActiveRecord::Migration[5.2]
  def change
    rename_column :bookings, :confirmed, :status
    change_column :bookings, :status, :string
  end
end
