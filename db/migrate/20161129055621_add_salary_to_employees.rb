class AddSalaryToEmployees < ActiveRecord::Migration
  def change
    add_column :employees, :salary, :float
  end
end
