class CreateStoredStatuses < ActiveRecord::Migration
  def change
    create_table :stored_statuses do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
