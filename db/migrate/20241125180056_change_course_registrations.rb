class ChangeCourseRegistrations < ActiveRecord::Migration[7.2]
  def change
    change_table :course_registrations do |t|
      t.string :first_name
      t.string :last_name
      t.integer :age
      t.remove :name
      t.remove :username
      t.boolean :member, default: false
    end
  end
end
