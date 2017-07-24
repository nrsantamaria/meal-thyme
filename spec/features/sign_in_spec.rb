require 'rails_helper'

describe 'the user sign in process' do
  it 'sends a user to their profile page' do
    visit '/'
    user = FactoryGirl.create(:user)
    fill_in 'user[username]', :with => user.username
    fill_in 'user[email]', :with => user.email
    fill_in 'user[password]', :with => user.password
    click_on 'Log in'
    expect(page).to have_content 'Profile Page'
  end
end
