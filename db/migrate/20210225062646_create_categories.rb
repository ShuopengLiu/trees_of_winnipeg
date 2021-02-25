class CreateCategories < ActiveRecord::Migration[6.1]
  def change
    create_table :categories do |t|
      t.string :botanical_name
      t.string :common_name

      t.timestamps
    end
  end
end
