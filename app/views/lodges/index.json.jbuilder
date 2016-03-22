json.array!(@lodges) do |lodge|
  json.extract! lodge, :id
  json.url lodge_url(lodge, format: :json)
end
