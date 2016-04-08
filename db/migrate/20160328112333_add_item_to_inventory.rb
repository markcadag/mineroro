class AddItemToInventory < ActiveRecord::Migration
  def change
    add_reference :inventories, :item, index: true, foreign_key: true
  end
end
