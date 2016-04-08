class AddExpenseSubTypeCodeToExpenseSubType < ActiveRecord::Migration
  def change
    add_column :expense_sub_types, :expense_sub_type_code, :string
  end
end
