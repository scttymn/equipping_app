json.extract! event, :id, :start_at, :end_at, :recurrence_rule, :recurrence_frequency, :recurrence_end_date, :postponed_until, :created_at, :updated_at
json.url event_url(event, format: :json)
