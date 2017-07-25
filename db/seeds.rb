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
    seed.write_json
  end

  def write_json
    recipePath = "#{Rails.root}/public/recipes7.25.v1.json"
    recipes = JSON.parse(File.read(recipePath))
    recipes.each do |recipe|
      instructionsObject = recipe['analyzedInstructions'][0]['steps']
      steps = [];
      instructionsObject.each do |instruction|
      	steps.push(instruction['step'])
      end
      puts(steps);
    end
  end
end

Seed.begin
