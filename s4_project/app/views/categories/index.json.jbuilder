json.array!(@categories) do |category|
  json.extract! category, :id, :cname
  json.url category_url(category, format: :json)
end
