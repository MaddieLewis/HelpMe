class Task < ApplicationRecord
  belongs_to :user
  has_many :bookings
  validates :user, :title, :description, :start_date, :end_date, :start_time, :end_time, :category, presence: true
end
