json.extract! subscription, :id, :person_id, :stripe_customer_id, :stripe_subscription_id, :status, :created_at, :updated_at
json.url subscription_url(subscription, format: :json)
