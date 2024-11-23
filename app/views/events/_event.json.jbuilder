json.extract! event, :id, :title, :description, :image_url, :date, :archived, :created_at, :updated_at
json.url event_url(event, format: :json)
