class AddEmployeeStatusToEmployees < ActiveRecord::Migration
  def change
    add_column :employees, :employee_status, :integer
  end
end
