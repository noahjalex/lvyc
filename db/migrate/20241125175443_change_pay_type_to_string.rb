class ChangePayTypeToString < ActiveRecord::Migration[7.2]
  def change
    change_column :course_registrations, :pay_type, :string
  end
end
