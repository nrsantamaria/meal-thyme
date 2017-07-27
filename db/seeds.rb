# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
class Seed

  def self.begin
    seed = Seed.new
    seed.add_recipes
    seed.add_admin
  end

  def add_recipes
    recipePath = "#{Rails.root}/public/recipes7.27.v1.json"
    recipes = JSON.parse(File.read(recipePath))
    recipes.each do |recipe|
      instructionsObject = recipe['analyzedInstructions'][0]['steps']
      steps = [];
      instructionsObject.each do |instruction|
      	steps.push(instruction['step'])
      end
      Recipe.create!(title: recipe['title'], imageUrl: recipe['image'], calories: recipe['calories'], protein: recipe['protein'], fat: recipe['fat'], carbohydrates: recipe['carbs'], instructions: steps)
    end
  end

  def add_admin
    User.create!(username: 'admin', email: 'admin@email.com', password: '123456', admin: true)
  end
end

Seed.begin
