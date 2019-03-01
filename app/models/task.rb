class Task < ApplicationRecord
  belongs_to :user
  has_many :bookings
  validates :category, inclusion: { in: %w(transport pets shopping DIY other),
    message: "%{value} is not a valid category" }
  validates :title, :address, :description, :start_time, :end_time, :category, presence: true
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
  mount_uploader :photo, PhotoUploader
  include PgSearch
  pg_search_scope :search_by_task_title_category_description,
    against: [:title, :category, :description, :address],
    using: {
      tsearch: { prefix: true }
    }

  def pic_url()
    if self.photo_url
      return self.photo
    else
      return "sf1"
    end
  end
end
