class AddTunnelToMiner < ActiveRecord::Migration
  def change
    add_reference :miners, :tunnel, index: true, foreign_key: true
  end
end
