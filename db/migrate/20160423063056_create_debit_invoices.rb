class CreateDebitInvoices < ActiveRecord::Migration
  def change
    create_table :debit_invoices do |t|
      t.decimal :total_amount
      t.string :account_name

      t.timestamps null: false
    end
  end
end
