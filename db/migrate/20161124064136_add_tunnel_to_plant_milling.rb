class AddTunnelToPlantMilling < ActiveRecord::Migration
  def change
    add_reference :plant_millings, :tunnel, index: true, foreign_key: true
  end
end
