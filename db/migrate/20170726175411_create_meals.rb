class CreateMeals < ActiveRecord::Migration[5.1]
  def change
    create_table :meals do |t|
      t.string :category
      t.datetime :start_time
      t.integer :user_id
    end
  end
end
