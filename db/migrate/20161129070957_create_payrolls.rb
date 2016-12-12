class CreatePayrolls < ActiveRecord::Migration
  def change
    create_table :payrolls do |t|
      t.string :reference_number
      t.date :payroll_date

      t.timestamps null: false
    end
  end
end
