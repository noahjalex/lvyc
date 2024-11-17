class CreateCourses < ActiveRecord::Migration[7.2]
  def change
    create_table :courses do |t|
      t.string :name
      t.text :description
      t.datetime :start_time
      t.datetime :end_time
      t.integer :capacity
      t.decimal :price, precision: 8, scale: 2
      t.timestamps
    end
  end
end
