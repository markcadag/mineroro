class AddMineToMiningOperations < ActiveRecord::Migration
  def change
    add_reference :mining_operations, :mine, index: true, foreign_key: true
  end
end
