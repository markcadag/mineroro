json.array!(@in_categories) do |in_category|
  json.extract! in_category, :id, :name
  json.url in_category_url(in_category, format: :json)
end
