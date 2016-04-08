class AddParticularsToInvoice < ActiveRecord::Migration
  def change
    add_column :invoices, :particulars, :string
  end
end
