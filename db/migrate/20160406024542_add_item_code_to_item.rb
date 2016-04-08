class AddItemCodeToItem < ActiveRecord::Migration
  def change
    add_column :items, :item_code, :string
  end
end
