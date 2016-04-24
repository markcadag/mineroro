class ChangeTypeToParticularType < ActiveRecord::Migration
 def change
    rename_column :invoices, :type, :particular_type
 end
end
