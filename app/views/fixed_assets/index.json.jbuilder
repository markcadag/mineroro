json.array!(@fixed_assets) do |fixed_asset|
  json.extract! fixed_asset, :id, :category, :date_purchased, :quantity, :amount, :remarks, :item_code, :location
  json.url fixed_asset_url(fixed_asset, format: :json)
end
