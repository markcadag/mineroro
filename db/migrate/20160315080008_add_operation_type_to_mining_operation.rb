class AddOperationTypeToMiningOperation < ActiveRecord::Migration
  def change
    add_column :mining_operations, :operation_type, :string
  end
end
