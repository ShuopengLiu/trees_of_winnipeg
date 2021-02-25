class CreateTrees < ActiveRecord::Migration[6.1]
  def change
    create_table :trees do |t|
      t.integer :source_id
      t.integer :diameter
      t.string :latitude
      t.string :longitude

      t.timestamps
    end
  end
end
