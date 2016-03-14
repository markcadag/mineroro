class AddUnitToExpenses < ActiveRecord::Migration
  def change
    add_column :expenses, :unit, :string
  end
end
