class AddNeighbourhoodToTrees < ActiveRecord::Migration[6.1]
  def change
    add_reference :trees, :neighbourhood, null: false, foreign_key: true
  end
end
