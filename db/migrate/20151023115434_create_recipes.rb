class CreateRecipes < ActiveRecord::Migration
  def change
    create_table :recipes do |t|
      t.string :name
      t.text :ingredients
      t.text :instructions
      t.integer :time
      t.integer :quantity
      t.references :level
      t.references :subcategory
      t.references :user
      t.timestamps
    end
  end
end
