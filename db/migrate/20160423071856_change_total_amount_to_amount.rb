class ChangeTotalAmountToAmount < ActiveRecord::Migration
  def change
  	rename_column :debit_invoices, :total_amount, :amount
  end
end
