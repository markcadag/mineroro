class AddDescriptionToMines < ActiveRecord::Migration
  def change
    add_column :mines, :description, :string
  end
end
