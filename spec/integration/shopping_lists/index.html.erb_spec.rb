require 'rails_helper'

RSpec.describe 'shopping_list/index.html.erb', type: :feature do
  let(:user) { User.create(name: 'Prangon Ghose', email: 'test@example.com', password: '12345678') }
  before(:each) do
    user.confirm
    sign_in user
    @recipe = Recipe.create(name: 'new', preparation_time: '10', cooking_time: '5',
                            description: 'test description', public: true, user:)
    @recipe2 = Recipe.create(name: 'new2', preparation_time: '10', cooking_time: '5',
                             description: 'text description 2', public: false, user:)
    @food = Food.create(name: 'orange', measurement_unit: 'Kg', price: 10, quantity: 5)
    @food2 = Food.create(name: 'apple', measurement_unit: 'Kg', price: 20, quantity: 30)

    RecipeFood.create(recipe_id: @recipe.id, food_id: @food.id, quantity: 100)
    RecipeFood.create(recipe_id: @recipe.id, food_id: @food2.id, quantity: 100)
                             
    visit public_recipes_path
  end

  it 'Shows shopping list text' do
    expect(page).to have_content('Shopping List')
  end

  scenario 'Show the field of food items to buy' do
    visit '/general_shopping_list'
    expect(page).to have_selector('.total-items')
  end

  scenario 'Show the field of total ammount to buy' do
    visit '/general_shopping_list'
    expect(page).to have_selector('.total-value')
  end

  scenario 'Show the ingredients table' do
    visit '/general_shopping_list'
    expect(page).to have_selector('.table')
  end
end
