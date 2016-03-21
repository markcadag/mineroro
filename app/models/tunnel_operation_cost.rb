class TunnelOperationCost < ActiveRecord::Base
  belongs_to :expense
  belongs_to :mining_operation
end
