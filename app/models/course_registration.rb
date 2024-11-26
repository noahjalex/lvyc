class CourseRegistration < ApplicationRecord
  PAYMENT_OPTIONS = [ "Debit Card", "Credit Card" ]

  belongs_to :course
  has_many :users

  validates :email, presence: true
  validates :pay_type, presence: true, inclusion: { in: PAYMENT_OPTIONS }
  validates :user_id, presence: true
  validates :course_id, presence: true
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :age, presence: true
  validates :member, presence: true
end
