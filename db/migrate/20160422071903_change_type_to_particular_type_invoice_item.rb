class ChangeTypeToParticularTypeInvoiceItem < ActiveRecord::Migration
	def change
    	rename_column :invoice_items, :type, :particular_type
 	end
end
