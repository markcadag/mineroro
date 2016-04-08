class CreateInvoices < ActiveRecord::Migration
  def change
    create_table :invoices do |t|
      t.string :type
      t.decimal :total_amount

      t.timestamps null: false
    end
  end
end
