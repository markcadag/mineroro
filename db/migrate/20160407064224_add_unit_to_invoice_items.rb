class AddUnitToInvoiceItems < ActiveRecord::Migration
  def change
    add_column :invoice_items, :unit, :string
  end
end
