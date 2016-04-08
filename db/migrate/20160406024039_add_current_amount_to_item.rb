class AddCurrentAmountToItem < ActiveRecord::Migration
  def change
    add_column :items, :current_amount, :decimal, :precision => 8, :scale => 2
  end
end
