json.extract! attendance, :id, :person_id, :event_id, :attended_at, :created_at, :updated_at
json.url attendance_url(attendance, format: :json)
