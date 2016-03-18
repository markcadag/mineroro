class AddTotalToExpenses < ActiveRecord::Migration
  def change
    add_column :expenses, :total, :float , :limit => 53, :null => true
  end
end
