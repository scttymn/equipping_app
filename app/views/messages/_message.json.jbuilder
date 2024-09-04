json.extract! message, :id, :messageable_id, :messageable_type, :parent_message_id, :sender_id, :content, :reply_type, :created_at, :updated_at
json.url message_url(message, format: :json)
