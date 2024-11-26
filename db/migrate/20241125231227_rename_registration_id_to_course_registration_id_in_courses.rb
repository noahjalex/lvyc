class RenameRegistrationIdToCourseRegistrationIdInCourses < ActiveRecord::Migration[7.2]
  def change
    rename_column :courses, :registration_id, :course_registration_id
  end
end
