class AddUserToMines < ActiveRecord::Migration
  def change
    add_reference :mines, :user, index: true, foreign_key: true
  end
end
