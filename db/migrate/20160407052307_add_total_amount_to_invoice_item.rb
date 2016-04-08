class AddTotalAmountToInvoiceItem < ActiveRecord::Migration
  def change
    add_column :invoice_items, :toal_amount, :decimal, :precision => 8, :scale => 2
  end
end
