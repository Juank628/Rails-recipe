require 'rails_helper'

RSpec.describe 'public_recipes/index.html.erb', type: :feature do
  let(:user) { User.create(name: 'Prangon Ghose', email: 'test@example.com', password: '12345678') }
  before(:each) do
    user.confirm
    sign_in user
    @recipe = Recipe.create(name: 'new', preparation_time: '10', cooking_time: '5',
                            description: 'test description', public: true, user:)
    @recipe2 = Recipe.create(name: 'new2', preparation_time: '10', cooking_time: '5',
                             description: 'text description 2', public: false, user:)
    visit public_recipes_path
  end

  it 'Shows the recipes the user has created' do
    expect(page).to have_content('All available public recipes')
  end

  it 'Shows the name of the public recipes only' do
    expect(page).to have_content(@recipe.name)
    expect(page).not_to have_content(@recipe2.name)
  end

  it 'redirects me to a specifc recipe if it is created by the user' do
    link = find("a[href='#{recipe_path(@recipe.id)}']")
    link.click
    expect(page).to have_current_path(recipe_path(@recipe.id))
  end

  it 'redirects me to public recipes' do
    link = find("a[href='#{public_recipes_path}']")
    link.click
    expect(page).to have_current_path(public_recipes_path)
  end
end
