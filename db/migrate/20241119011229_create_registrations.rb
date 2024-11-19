class CreateRegistrations < ActiveRecord::Migration[7.2]
  def change
    create_table :registrations do |t|
      t.string :name
      t.text :username
      t.string :email
      t.integer :pay_type

      t.timestamps
    end
  end
end
