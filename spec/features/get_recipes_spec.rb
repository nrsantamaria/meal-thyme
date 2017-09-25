require 'rails_helper'

describe 'get all the recipes' do
  it 'shows all the recipes in the database' do
    visit '/'
    user = FactoryGirl.create(:user)
    fill_in 'user[username]', :with => user.username
    fill_in 'user[email]', :with => user.email
    fill_in 'user[password]', :with => user.password
    click_on 'Log in'
    visit recipes_path
    expect(page).to have_content 'Recipes'
  end
end
