class AddVendorRefToInvoices < ActiveRecord::Migration
  def change
    add_reference :invoices, :vendor, index: true, foreign_key: true
  end
end
