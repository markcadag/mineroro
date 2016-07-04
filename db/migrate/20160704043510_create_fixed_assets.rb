class CreateFixedAssets < ActiveRecord::Migration
  def change
    create_table :fixed_assets do |t|
      t.string :category
      t.datetime :date_purchased
      t.integer :quantity
      t.integer :amount
      t.string :remarks
      t.string :item_code
      t.string :location

      t.timestamps null: false
    end
  end
end
