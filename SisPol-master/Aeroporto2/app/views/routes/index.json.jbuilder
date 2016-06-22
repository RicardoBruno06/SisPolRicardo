json.array!(@routes) do |route|
  json.extract! route, :id, :hour, :price, :status
  json.url route_url(route, format: :json)
end
