json.extract! registration, :id, :name, :username, :email, :pay_type, :created_at, :updated_at
json.url registration_url(registration, format: :json)
