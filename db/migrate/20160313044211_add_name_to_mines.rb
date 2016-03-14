class AddNameToMines < ActiveRecord::Migration
  def change
    add_column :mines, :name, :string
  end
end
