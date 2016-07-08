class CreatePersonnels < ActiveRecord::Migration
  def change
    create_table :personnels do |t|
      t.string :name
      t.date :date_hired
      t.boolean :active
      t.date :date_resign

      t.timestamps null: false
    end
  end
end
