class CreateMines < ActiveRecord::Migration
  def change
    create_table :mines do |t|

      t.timestamps null: false
    end
  end
end
