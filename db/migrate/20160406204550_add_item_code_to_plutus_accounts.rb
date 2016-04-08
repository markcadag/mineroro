class AddItemCodeToPlutusAccounts < ActiveRecord::Migration
  def change
    add_column :plutus_accounts, :item_code, :string
  end
end
