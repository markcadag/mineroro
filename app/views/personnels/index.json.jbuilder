json.array!(@personnels) do |personnel|
  json.extract! personnel, :id, :name, :date, :boolean, :date
  json.url personnel_url(personnel, format: :json)
end
