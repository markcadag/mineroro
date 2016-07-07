class AddInCategoryToInventories < ActiveRecord::Migration
  def change
    add_reference :inventories, :in_category, index: true, foreign_key: true
  end
end
