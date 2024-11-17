class AddImageUrlToCourses < ActiveRecord::Migration[7.2]
  def change
    add_column :courses, :image_url, :text, default: 'dinghy.jpg'
  end
end
