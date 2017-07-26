class UpdateMeals < ActiveRecord::Migration[5.1]
  def change
    add_column(:meals, :recipe_id, :integer)
  end
end
