class AddMineToInventory < ActiveRecord::Migration
  def change
    add_reference :inventories, :mine, index: true, foreign_key: true
  end
end
