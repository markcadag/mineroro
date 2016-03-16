json.array!(@mining_operations) do |mining_operation|
  json.extract! mining_operation, :id, :import_count, :export_count, :export_unit, :import_unit, :status, :stash, :stash_name
  json.url mining_operation_url(mining_operation, format: :json)
end
