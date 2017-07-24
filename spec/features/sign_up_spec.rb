require 'rails_helper'

describe 'the user sign up process' do
  it 'adds a user to the system' do
    user = FactoryGirl.create(:user)
    visit '/'
    fill_in 'user[username]', :with => user.username
    fill_in 'user[email]', :with => user.email
    fill_in 'user[password]', :with => user.password
    fill_in 'Password confirmation', :with => user.password
    click_on 'Sign up'
    expect(page).to have_content 'Profile Page'
  end
end
