require 'rails_helper'

describe 'the user sign up process' do
  it 'adds a user to the system' do
    visit '/users/sign_up'
    user = FactoryGirl.create(:user)
    fill_in 'user[username]', :with => user.username
    fill_in 'user[email]', :with => 'email2@email.com'
    fill_in 'user[password]', :with => user.password
    fill_in 'user_password_confirmation', :with => user.password
    click_on 'Sign up'
    expect(page).to have_content 'Profile Page'
  end
end
