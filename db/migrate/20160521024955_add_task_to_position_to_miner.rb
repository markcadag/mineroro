class AddTaskToPositionToMiner < ActiveRecord::Migration
  def change
    add_column :miners, :position, :string
  end
end
