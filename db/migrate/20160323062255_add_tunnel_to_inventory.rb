class AddTunnelToInventory < ActiveRecord::Migration
  def change
    add_reference :inventories, :tunnel, index: true, foreign_key: true
  end
end
