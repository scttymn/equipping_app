json.extract! auth_token, :id, :person_id, :token, :expires_at, :created_at, :updated_at
json.url auth_token_url(auth_token, format: :json)
