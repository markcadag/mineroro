class AddDescriptionToInventory < ActiveRecord::Migration
  def change
    add_column :inventories, :description, :string
  end
end
