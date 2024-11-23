class AddUserAndCourseToCourseRegistrations < ActiveRecord::Migration[7.2]
  def change
    add_reference :course_registrations, :user, null: false, foreign_key: true
    add_reference :course_registrations, :course, null: false, foreign_key: true
  end
end
