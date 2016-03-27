class ChangeDefaultForTunnelOperaitonProductionCount < ActiveRecord::Migration
  def change
  	change_column :tunnel_operations, :production_count, :integer, :default => 0
  	change_column :tunnel_operations, :stock_pile, :integer, :default => 0
  	change_column :tunnel_operations, :export_count, :integer, :default => 0
  end
end
