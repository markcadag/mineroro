class CreateInvoiceItems < ActiveRecord::Migration
  def change
    create_table :invoice_items do |t|
      t.string :type
      t.integer :quantity
      t.string :description
      t.decimal :amount

      t.timestamps null: false
    end
  end
end
