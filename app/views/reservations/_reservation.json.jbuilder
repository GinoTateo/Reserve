json.extract! reservation, :id, :reservation_id, :created_at, :updated_at
json.url reservation_url(reservation, format: :json)
