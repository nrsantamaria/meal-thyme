require 'rails_helper'

describe 'the user index route' do
  it 'redirects to the home index path' do
    visit users_path
    expect(page).to have_content 'Log in'
  end
end
