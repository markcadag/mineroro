class AddDateHiredToMiner < ActiveRecord::Migration
  def change
    add_column :miners, :date_hired, :datetime
  end
end
