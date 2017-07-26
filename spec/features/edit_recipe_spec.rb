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
    visit recipe_path(recipe)
    click_on 'Edit'
    fill_in 'recipe[title]', :with => recipe.title
    click_on 'Update Recipe'
    expect(page).to have_content 'Instructions'
  end
end
