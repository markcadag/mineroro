class AddProductionTypeToPlantMillings < ActiveRecord::Migration
  def change
    add_column :plant_millings, :production_type, :integer ,  default: 2
  end
end
