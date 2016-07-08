class CreatePersonnels < ActiveRecord::Migration
  def change
    create_table :personnels do |t|
      t.string :name
      t.date_hired :date
      t.active :boolean
      t.date_resign :date

      t.timestamps null: false
    end
  end
end
