class Course < ApplicationRecord
  validates :name, :description, :image_url, :start_time, :end_time, :capacity, presence: true
  validates :name, uniqueness: true
  validates :image_url, allow_blank: true, format: { with: %r{\.(jpg|png)\z}i, message: "must be a URL for JPG or PNG image." }
  validates :price, numericality: { greater_than_or_equal_to: 0.01 }

  has_many :course_registrations
end
