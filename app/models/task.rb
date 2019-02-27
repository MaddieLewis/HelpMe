class Task < ApplicationRecord
  belongs_to :user
  has_many :bookings
  validates :title, :address, :description, :start_date, :end_date, :start_time, :end_time, :category, presence: true
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
