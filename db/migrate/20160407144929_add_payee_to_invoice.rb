class AddPayeeToInvoice < ActiveRecord::Migration
  def change
    add_column :invoices, :payee, :string
  end
end
