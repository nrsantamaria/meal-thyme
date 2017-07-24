require 'rails_helper'

describe 'the user sign in process' do
  it 'sends a user to their profile page' do
    visit '/'
    user = FactoryGirl.create(:user)
    fill_in 'user[username]', :with => user.username
    fill_in 'user[email]', :with => user.email
    fill_in 'user[password]', :with => user.password
    click_on 'Log in'
    click_on 'Sign Out'
    expect(page).to have_content 'Signed out successfully.'
  end
end
