class CreateRecipes < ActiveRecord::Migration
  def change
    create_table :recipes do |t|
      t.string :name
      t.text :ingredients
      t.text :instructions
      t.integer :time
      t.references :level
      t.references :user
      t.timestamps
    end
  end
end
