class CreateMiningOperations < ActiveRecord::Migration
  def change
    create_table :mining_operations do |t|
      t.float :import_count, :limit => 53, :null => true
      t.float :export_count, :limit => 53, :null => true
      t.string :export_unit
      t.string :import_unit
      t.string :status
      t.string :stash
      t.string :stash_name

      t.timestamps null: false
    end
  end
end
