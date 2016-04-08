class CreateExpenseSubTypes < ActiveRecord::Migration
  def change
    create_table :expense_sub_types do |t|
      t.references :expense_type, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
