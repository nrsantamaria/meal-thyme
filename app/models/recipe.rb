class Recipe < ActiveRecord::Base
  has_one :meal

  scope :dairy, where(:diets => "dairy free")
  scope :shellfish, where(:diets => "shellfish allergy")
  scope :veg, where(:diets => "vegan", "vegetarian")
  scope :nut, where(:diets => "nut allergy")
  scope :gluten, where(:diets => "gluten free")
end
