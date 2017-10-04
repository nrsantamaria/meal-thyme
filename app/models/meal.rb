class Meal < ActiveRecord::Base
  belongs_to :user
  belongs_to :recipe

  delegate :title, :calories, :fat, :carbohydrates, :protein, to: :meal
end
