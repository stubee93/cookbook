class CreateFavoriteRecipes < ActiveRecord::Migration
  def change
    create_table :favorite_recipes do |t|
      t.integer :recipe_id
      t.integer :user_id

      t.timestamps
    end
  end
end
