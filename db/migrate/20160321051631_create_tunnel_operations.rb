class CreateTunnelOperations < ActiveRecord::Migration
  def change
    create_table :tunnel_operations do |t|
      t.integer :production_count
      t.string :production_name
      t.integer :export_count
      t.string :export_name
      t.string :status
      t.integer :stock_pile
      t.string :stock_pile_name
      t.integer :updated_by
      t.integer :created_by
      t.references :tunnel, index: true, foreign_key: true
      t.references :mine, index: true, foreign_key: true
      t.string :operation_type

      t.timestamps null: false
    end
  end
end
