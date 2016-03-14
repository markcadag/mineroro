json.array!(@mines) do |mine|
  json.extract! mine, :id
  json.url mine_url(mine, format: :json)
end
