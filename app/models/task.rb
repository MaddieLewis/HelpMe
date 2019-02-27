class Task < ApplicationRecord
  belongs_to :user
  has_many :bookings
  validates :title, :description, :start_date, :end_date, :start_time, :end_time, :category, presence: true
  validates :category, inclusion: { in: %w(transport pets shopping DIY),
    message: "%{value} is not a valid category" }
end
