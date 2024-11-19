class Registration < ApplicationRecord
  enum pay_type: {
    "Cash" => 0,
    "Credit Card" => 1
  }
  belongs_to :course
end
