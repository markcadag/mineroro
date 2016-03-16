class AddTunnelToMiningOperations < ActiveRecord::Migration
  def change
    add_reference :mining_operations, :tunnel, index: true, foreign_key: true
  end
end
