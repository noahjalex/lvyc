class CreateEvents < ActiveRecord::Migration[7.2]
  def change
    create_table :events do |t|
      t.string :title
      t.text :description
      t.string :image_url
      t.datetime :date
      t.boolean :archived, default: false

      t.timestamps
    end
  end
end
