json.array!(@plant_millings) do |plant_milling|
  json.extract! plant_milling, :id, :team_id, :milled_from, :milled_to, :ore_count, :ore_weight, :refined_output, :reference_number, :date_sold, :sold_quantity, :unit_price, :revenue, :jdt_trading_share, :plant_charge, :gross_sale, :corp_share, :royalty_share, :miner_share, :contractor_share, :pioneer_share, :msebua_share, :community_fund, :remarks, :notes, :mine_id, :updated_by, :created_by, :control_number
  json.url plant_milling_url(plant_milling, format: :json)
end
