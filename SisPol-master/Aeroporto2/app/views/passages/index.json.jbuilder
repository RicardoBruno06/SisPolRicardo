json.array!(@passages) do |passage|
  json.extract! passage, :id, :font, :destiny
  json.url passage_url(passage, format: :json)
end
