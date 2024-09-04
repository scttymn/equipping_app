json.extract! group_member, :id, :person_id, :group_id, :is_leader, :created_at, :updated_at
json.url group_member_url(group_member, format: :json)
