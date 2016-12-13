class AddEndDateToPayrolls < ActiveRecord::Migration
  def change
    add_column :payrolls, :end_date, :date
  end
end
