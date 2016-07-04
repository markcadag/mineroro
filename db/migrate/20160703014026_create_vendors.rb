class CreateVendors < ActiveRecord::Migration
  def change
    create_table :vendors do |t|
      t.string :name
      t.string :address
      t.string :contact
      t.string :vendor_number

      t.timestamps null: false
    end
  end
end
