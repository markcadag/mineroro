class ChangeParticularsToAccountName < ActiveRecord::Migration
  	def change
    	rename_column :invoice_items, :particulars, :account_name
    	rename_column :invoice_items, :toal_amount, :total_amount
 	end
end
