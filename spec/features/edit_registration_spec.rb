require 'rails_helper'

describe 'the edit user profile process' do
  it 'allows user to update their account details' do
    visit '/'
    user = FactoryGirl.create(:user)
    fill_in 'user[username]', :with => user.username
    fill_in 'user[email]', :with => user.email
    fill_in 'user[password]', :with => user.password
    click_on 'Log in'
    click_on 'Edit Account'
    fill_in 'user[username]', :with => 'user.username'
    fill_in 'user[password]', :with => user.password
    fill_in 'user[password_confirmation]', :with => user.password
    fill_in 'user[current_password]', :with => user.password
    click_on 'Update'
    expect(page).to have_content 'Your account has been updated successfully.'
  end
end
