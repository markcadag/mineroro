class AddProductStateToPlantMillings < ActiveRecord::Migration
  def change
    add_column :plant_millings, :product_state, :integer ,  default: 1
  end
end
