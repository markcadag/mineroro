class AddMobileNumberToMiners < ActiveRecord::Migration
  def change
    add_column :miners, :mobile_number, :string
  end
end
