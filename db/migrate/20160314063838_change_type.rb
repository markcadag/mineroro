class ChangeType < ActiveRecord::Migration
  def change
    rename_column :expenses, :type, :category
  end
end
