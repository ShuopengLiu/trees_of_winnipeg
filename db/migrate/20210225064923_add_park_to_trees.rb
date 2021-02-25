class AddParkToTrees < ActiveRecord::Migration[6.1]
  def change
    add_reference :trees, :park, null: false, foreign_key: true
  end
end
