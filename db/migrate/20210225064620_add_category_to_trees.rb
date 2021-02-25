class AddCategoryToTrees < ActiveRecord::Migration[6.1]
  def change
    add_reference :trees, :category, null: false, foreign_key: true
  end
end
