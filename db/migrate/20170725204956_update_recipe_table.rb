class UpdateRecipeTable < ActiveRecord::Migration[5.1]
  def change
    rename_column :recipes, :intructions, :instructions
  end
end
