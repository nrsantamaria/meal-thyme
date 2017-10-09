class UpdateRecipesSpecifics < ActiveRecord::Migration[5.1]
  def change
    add_column(:recipes, :diets, :text, array: true, default: [])
    add_column(:recipes, :ingredients, :text, array: true, default: [])
  end
end
