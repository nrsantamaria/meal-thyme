require 'rails_helper'

describe 'the admin add a recipe process' do
  it 'creates a new recipe' do
    visit '/'
    user = User.create!(:username => 'admin', :email => 'admin@email.com', :password => '123456', :admin => true)
    recipe = FactoryGirl.create(:recipe)
    fill_in 'user[username]', :with => user.username
    fill_in 'user[email]', :with => user.email
    fill_in 'user[password]', :with => user.password
    click_on 'Log in'
    visit new_recipe_path
    fill_in 'recipe[title]', :with => recipe.title
    fill_in 'recipe[imageUrl]', :with => recipe.imageUrl
    fill_in 'recipe[calories]', :with => recipe.calories
    fill_in 'recipe[protein]', :with => recipe.protein
    fill_in 'recipe[fat]', :with => recipe.fat
    fill_in 'recipe[carbohydrates]', :with => recipe.carbohydrates
    fill_in 'recipe[instructions]', :with => 'recipe.instructions'
    click_on 'Create Recipe'
    expect(page).to have_content 'Recipes'
  end
end
