require 'rails_helper'

describe 'the recipe authentication process' do
  it 'sends flash message when user attempts to add a new recipe' do
    visit '/'
    user = FactoryGirl.create(:user)
    recipe = FactoryGirl.create(:recipe)
    fill_in 'user[username]', :with => user.username
    fill_in 'user[email]', :with => user.email
    fill_in 'user[password]', :with => user.password
    click_on 'Log in'
    visit new_recipe_path
    expect(page).to have_content 'You are not authorized to access that page.'
  end
end
