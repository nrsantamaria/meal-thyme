require 'rails_helper'

describe 'the user path' do
  it 'sends a user to their profile page' do
    user = FactoryGirl.create(:user)
    visit "/users/#{user.id}"
    expect(page).to have_content 'Profile Page'
  end
end
