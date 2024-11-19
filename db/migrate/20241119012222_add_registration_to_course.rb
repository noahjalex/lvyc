class AddRegistrationToCourse < ActiveRecord::Migration[7.2]
  def change
    add_reference :courses, :registration, null: true, foreign_key: true
  end
end
