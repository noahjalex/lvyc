class AddMemberToUsers < ActiveRecord::Migration[7.2]
  def change
    add_column :users, :member, :boolean, default: false
  end
end
