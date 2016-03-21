class CreateCheckAttendances < ActiveRecord::Migration
  def change
    create_table :check_attendances do |t|
      t.references :attendance, index: true, foreign_key: true
      t.references :miner, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
