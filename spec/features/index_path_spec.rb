require 'rails_helper'

describe 'the index route' do
  it 'shows the user log in page' do
    visit '/'
    expect(page).to have_content 'Log in'
  end
end
