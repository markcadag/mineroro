class AddIsActiveToMiner < ActiveRecord::Migration
  def change
    add_column :miners, :is_active, :boolean
  end
end
