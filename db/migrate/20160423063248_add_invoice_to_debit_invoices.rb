class AddInvoiceToDebitInvoices < ActiveRecord::Migration
  def change
    add_reference :debit_invoices, :invoice, index: true, foreign_key: true
  end
end
