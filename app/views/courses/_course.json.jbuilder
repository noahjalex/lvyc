json.extract! course, :id, :name, :description, :start_time, :end_time, :capacity, :price, :created_at, :updated_at
json.url course_url(course, format: :json)
