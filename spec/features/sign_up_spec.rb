require 'rails_helper'

describe 'the user sign up process' do
  it 'adds a user to the system' do
    visit '/users/sign_up'
    user = FactoryGirl.create(:user)
    fill_in 'user[username]', :with => user.username
    fill_in 'user[email]', :with => 'email2@email.com'
    fill_in 'user[password]', :with => user.password
    fill_in 'user_password_confirmation', :with => user.password
    fill_in 'user[calories]', :with => user.calories
    fill_in 'user[protein]', :with => user.protein
    fill_in 'user[fat]', :with => user.fat
    fill_in 'user[carbohydrates]', :with => user.carbohydrates
    click_on 'Sign up'
    expect(page).to have_content 'Profile Page'
  end
end
