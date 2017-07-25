class CreateRecipes < ActiveRecord::Migration[5.1]
  def change
    create_table :recipes do |t|
      t.string :title
      t.string :imageUrl
      t.integer :calories
      t.integer :protein
      t.integer :fat
      t.integer :carbohydrates
      t.string :intructions
      t.integer :user_id
    end
  end
end
