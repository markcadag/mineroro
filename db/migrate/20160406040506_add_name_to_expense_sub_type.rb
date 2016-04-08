class AddNameToExpenseSubType < ActiveRecord::Migration
  def change
    add_column :expense_sub_types, :name, :string
  end
end
