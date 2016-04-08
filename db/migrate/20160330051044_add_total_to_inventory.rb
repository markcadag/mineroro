class AddTotalToInventory < ActiveRecord::Migration
  def change
    add_column :inventories, :total, :decimal, :precision => 8, :scale => 2
  end
end
