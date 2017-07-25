require 'rails_helper'

describe 'the forget your password route' do
  it 'will send an email to the user with password reset instructions' do
    user = FactoryGirl.create(:user)
    visit '/'
    click_on 'Forgot your password?'
    fill_in 'user[email]', :with => user.email
    click_on 'Send me reset password instructions'
    expect(page).to have_content 'You will receive an email with instructions on how to reset your password in a few minutes.'
  end
end
