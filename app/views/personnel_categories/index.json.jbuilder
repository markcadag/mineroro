json.array!(@personnel_categories) do |personnel_category|
  json.extract! personnel_category, :id, :name
  json.url personnel_category_url(personnel_category, format: :json)
end
