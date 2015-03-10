json.array!(@focus_items) do |focus_item|
  json.extract! focus_item, :id, :user_id, :status
  json.url focus_item_url(focus_item, format: :json)
end
