require 'rails_helper'

describe 'get all the recipes' do
  it 'shows all the recipes in the database' do
    visit recipes_path
    expect(page).to have_content 'Recipes'
  end
end
