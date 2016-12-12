class CreatePayrollData < ActiveRecord::Migration
  def change
    create_table :payroll_data do |t|
      t.references :employee, index: true, foreign_key: true
      t.references :payroll, index: true, foreign_key: true
      t.float :salary
      t.float :deduction
      t.float :net

      t.timestamps null: false
    end
  end
end
