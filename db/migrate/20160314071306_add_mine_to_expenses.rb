class AddMineToExpenses < ActiveRecord::Migration
  def change
    add_reference :expenses, :mine, index: true, foreign_key: true
  end
end
