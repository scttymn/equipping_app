json.extract! person, :id, :first_name, :last_name, :email, :phone_number, :gender, :date_of_birth, :address_id, :created_at, :updated_at
json.url person_url(person, format: :json)
