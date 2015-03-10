json.array!(@locations) do |location|
  json.extract! location, :id, :user_id, :address, :city, :state, :zip
  json.url location_url(location, format: :json)
end
