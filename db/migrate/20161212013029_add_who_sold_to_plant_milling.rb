class AddWhoSoldToPlantMilling < ActiveRecord::Migration
  def change
    add_column :plant_millings, :who_sold, :string
  end
end
