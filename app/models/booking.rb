class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :task
  validates :status, inclusion: { in: ["pending", "confirmed", "declined", "cancelled"] }
  validates :user, uniqueness: { scope: [:task] }, message: "You have already made this booking"
end
