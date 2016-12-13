class AddPayrollTypeToPayrolls < ActiveRecord::Migration
  def change
    add_column :payrolls, :payroll_type, :int
  end
end
