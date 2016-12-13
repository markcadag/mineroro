class AddStartDateToPayrolls < ActiveRecord::Migration
  def change
    add_column :payrolls, :start_date, :date
  end
end
