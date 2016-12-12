class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.string :name
      t.string :address
      t.date :birthday
      t.string :mobile_number
      t.integer :employee_type

      t.timestamps null: false
    end
  end
end
