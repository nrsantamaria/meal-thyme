class AddDiet < ActiveRecord::Migration[5.1]
  def change
    add_column(:users, :dietary_restrictions, :string)
  end
end
