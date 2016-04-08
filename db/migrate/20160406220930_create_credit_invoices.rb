class CreateCreditInvoices < ActiveRecord::Migration
  def change
    create_table :credit_invoices do |t|
      t.string :title
      t.string :code
      t.datetime :value_date
      t.datetime :due_date
      t.datetime :duration_from
      t.datetime :duration_to
      t.string :remarks

      t.timestamps null: false
    end
  end
end
