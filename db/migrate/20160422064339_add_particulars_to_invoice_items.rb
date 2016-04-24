class AddParticularsToInvoiceItems < ActiveRecord::Migration
  def change
    add_column :invoice_items, :particulars, :string
  end
end
