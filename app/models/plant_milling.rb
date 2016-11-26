class PlantMilling < ActiveRecord::Base
  belongs_to :team
  belongs_to :mine
  enum production_type: { ball_mill: 0, rod_mill: 1, plant: 2 }
  enum product_state: { unrefined: 0, refined: 1 }
end
