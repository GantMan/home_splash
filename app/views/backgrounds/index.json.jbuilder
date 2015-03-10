json.array!(@backgrounds) do |background|
  json.extract! background, :id, :user_id, :image_file
  json.url background_url(background, format: :json)
end
