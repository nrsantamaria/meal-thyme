require 'rails_helper'

describe 'show a recipe' do
  it 'show an individual recipe' do
    recipe = FactoryGirl.create(:recipe)
    visit recipe_path(recipe)
    expect(page).to have_content 'Instructions'
  end
end
