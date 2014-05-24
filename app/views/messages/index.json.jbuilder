json.array!(@messages) do |message|
  json.extract! message, :id, :text, :author, :email
  json.url message_url(message, format: :json)
end
