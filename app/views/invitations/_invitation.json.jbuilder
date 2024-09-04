json.extract! invitation, :id, :email, :invited_by_id, :token, :status, :expires_at, :invitable_id, :invitable_type, :created_at, :updated_at
json.url invitation_url(invitation, format: :json)
