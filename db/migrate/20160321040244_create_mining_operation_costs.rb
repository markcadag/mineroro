class CreateMiningOperationCosts < ActiveRecord::Migration
  def change
    create_table :mining_operation_costs do |t|
      t.references :expense, index: true, foreign_key: true
      t.references :mining_operation, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
