class MiningOperationCost < ActiveRecord::Base
  belongs_to :expense
  belongs_to :mining_operation
end
