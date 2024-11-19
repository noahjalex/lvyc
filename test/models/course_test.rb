require "test_helper"

class CourseTest < ActiveSupport::TestCase
  test "course attributes must not be empty" do
    course = Course.new
    assert course.invalid?
    assert course.errors[:name].any?
    assert course.errors[:description].any?
    assert course.errors[:start_time].any?
    assert course.errors[:end_time].any?
    assert course.errors[:capacity].any?
    assert_not course.errors[:image_url].any?
    assert course.errors[:price].any?
  end
  test "course price must be positive" do
    course = Course.new(name: "Sailing Course", description: "Learn to Sail", image_url: "sailboat.jpg")

    course.price = -1
    assert course.invalid?
    assert_equal [ "must be greater than or equal to 0.01" ], course.errors[:price]

    course.price = 0
    assert course.invalid?
    assert_equal [ "must be greater than or equal to 0.01" ], course.errors[:price]
  end
end
