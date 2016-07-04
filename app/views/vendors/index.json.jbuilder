json.array!(@vendors) do |vendor|
  json.extract! vendor, :id, :name, :address, :contact, :vendor_number
  json.url vendor_url(vendor, format: :json)
end
