class CreatePlantMillings < ActiveRecord::Migration
  def change
    create_table :plant_millings do |t|
      t.references :team, index: true, foreign_key: true
      t.datetime :milled_from
      t.datetime :milled_to
      t.float :ore_count
      t.float :ore_weight
      t.float :refined_output
      t.string :reference_number
      t.datetime :date_sold
      t.float :sold_quantity
      t.float :unit_price
      t.float :revenue
      t.float :jdt_trading_share
      t.float :plant_charge
      t.float :gross_sale
      t.float :corp_share
      t.float :royalty_share
      t.float :miner_share
      t.float :contractor_share
      t.float :pioneer_share
      t.float :msebua_share
      t.float :community_fund
      t.string :remarks
      t.string :notes
      t.references :mine, index: true, foreign_key: true
      t.integer :updated_by
      t.integer :created_by
      t.string :control_number

      t.timestamps null: false
    end
  end
end
