class CreateStoredOperationTypes < ActiveRecord::Migration
  def change
    create_table :stored_operation_types do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
