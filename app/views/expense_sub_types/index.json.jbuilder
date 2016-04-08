json.array!(@expense_sub_types) do |expense_sub_type|
  json.extract! expense_sub_type, :id, :expense_type_id
  json.url expense_sub_type_url(expense_sub_type, format: :json)
end
