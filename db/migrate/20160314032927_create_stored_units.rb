class CreateStoredUnits < ActiveRecord::Migration
  def change
    create_table :stored_units do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
