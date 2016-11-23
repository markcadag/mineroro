class AddNameToMiners < ActiveRecord::Migration
  def change
    add_column :miners, :name, :string
  end
end
