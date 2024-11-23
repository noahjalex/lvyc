class RenameRegistrationsTable < ActiveRecord::Migration[7.2]
  def change
    rename_table :registrations, :course_registrations
  end
end
