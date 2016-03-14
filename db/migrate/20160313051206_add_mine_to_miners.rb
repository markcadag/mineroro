class AddMineToMiners < ActiveRecord::Migration
  def change
    add_reference :miners, :mine, index: true, foreign_key: true
  end
end
