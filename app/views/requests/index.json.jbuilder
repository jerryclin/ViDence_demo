json.array!(@requests) do |request|
  json.extract! request, :title, :description, :contact, :location, :user_id
  json.url request_url(request, format: :json)
end
