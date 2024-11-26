json.extract! course_registration, :id, :email, :first_name, :last_name, :pay_type, :created_at, :updated_at
json.url course_registration_url(registration, format: :json)
