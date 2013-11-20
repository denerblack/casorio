json.array!(@guests) do |guest|
  json.extract! guest, :name, :companions_amount, :confirmed
  json.url guest_url(guest, format: :json)
end
