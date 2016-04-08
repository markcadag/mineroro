class AddInvoiceCodeToInvoice < ActiveRecord::Migration
  def change
    add_column :invoices, :invoice_code, :string
  end
end
