class AddAddressToMiners < ActiveRecord::Migration
  def change
    add_column :miners, :address, :string
  end
end
