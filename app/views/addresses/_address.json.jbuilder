json.extract! address, :id, :address_line_1, :address_line_2, :address_line_3, :city_or_town, :state, :postal_code, :country, :region, :latitude, :longitude, :created_at, :updated_at
json.url address_url(address, format: :json)
