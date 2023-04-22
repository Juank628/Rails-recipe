require 'rails_helper'

RSpec.describe 'recipes/show.html.erb', type: :feature do
  let(:user) { User.create(name: 'Prangon Ghose', email: 'test@example.com', password: '12345678') }
  before(:each) do
    user.confirm
    sign_in user
    @recipe = Recipe.create(name: 'new', preparation_time: '10', cooking_time: '5',
                            description: 'test description', public: true, user:)
    @food = Food.create(name: 'new2', measurement_unit: 'cups', quantity: '1', price: '20', user:)
    @recipe_food = RecipeFood.create(quantity: '1', recipe_id: @recipe.id, food_id: @food.id)
    visit recipe_path(@recipe.id)
  end

  it 'Shows the recipes the user has created' do
    expect(page).to have_content("#{@recipe.name} by #{@recipe.user.name}")
  end

  it 'Shows preparation time for the recipe' do
    expect(page).to have_content(@recipe.preparation_time)
  end

  it 'Shows cooking time for the recipe' do
    expect(page).to have_content(@recipe.cooking_time)
  end

  it 'Shows table of ingredients' do
    expect(page).to have_content('Food Name')
    expect(page).to have_content('Quantity')
    expect(page).to have_content('Value')
    expect(page).to have_content('Action')
    expect(page).to have_content(@recipe_food.food.name)
    expect(page).to have_field('recipe_food_quantity', with: @recipe_food.quantity)
    expect(page).to have_content(@recipe_food.food.price * @recipe_food.quantity)
    expect(find('input[data-disable-with="Update"]').value).to eq('Update')
    expect(page).to have_content('Delete')
  end

  it 'redirects me to my recipes' do
    link = find("a[href='#{recipes_path}']")
    link.click
    expect(page).to have_current_path(recipes_path)
  end

  it 'a button to show the modal of add ingredients' do
    expect(page).to have_content('Add Ingredients')
  end
end
