class AddTunnelOperationDateToTunnelOperation < ActiveRecord::Migration
  def change
    add_column :tunnel_operations, :tunnel_operation_date, :datetime
  end
end
