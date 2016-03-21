json.array!(@tunnel_operations) do |tunnel_operation|
  json.extract! tunnel_operation, :id, :production_count, :production_name, :export_count, :export_name, :status, :stock_pile, :stock_pile_name, :updated_by, :created_by, :tunnel_id, :mine_id, :operation_type
  json.url tunnel_operation_url(tunnel_operation, format: :json)
end
