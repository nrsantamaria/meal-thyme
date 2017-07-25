require 'rails_helper'

describe 'the user path' do
  it 'authenticates a user' do
    user = FactoryGirl.create(:user)
    visit "/users/#{user.id}"
    expect(page).to have_content 'You must be logged in to access that page'
  end
end
