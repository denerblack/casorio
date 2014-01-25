json.array!(@gift_lists) do |gift_list|
  json.extract! gift_list, :name, :brand
  json.url gift_list_url(gift_list, format: :json)
end
