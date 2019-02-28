class AddReviewsToBookings < ActiveRecord::Migration[5.2]
  def change
    add_column :bookings, :user_review, :string
    add_column :bookings, :user_rating, :integer
  end
end
