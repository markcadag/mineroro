class AddAmountToExpenses < ActiveRecord::Migration
  def change
    add_column :expenses, :amount, :double
  end
end
