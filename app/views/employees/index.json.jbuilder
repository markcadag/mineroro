json.array!(@employees) do |employee|
  json.extract! employee, :id, :name, :address, :birthday, :mobile_number, :employee_type
  json.url employee_url(employee, format: :json)
end
