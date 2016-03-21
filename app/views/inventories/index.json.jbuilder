json.array!(@inventories) do |inventory|
  json.extract! inventory, :id, :name, :quantity, :amount
  json.url inventory_url(inventory, format: :json)
end
