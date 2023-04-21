require 'rails_helper'

RSpec.describe 'foods/index.html.erb', type: :feature do
  let(:user) { User.create(name: 'Prangon Ghose', email: 'test@example.com', password: '12345678') }
  before(:each) do
    user.confirm
    sign_in user
    @food = Food.create(name: 'orange', measurement_unit: 'Kg', price: 10, quantity: 5, user:)
    @food2 = Food.create(name: 'apple', measurement_unit: 'Kg', price: 20, quantity: 30, user:)
    visit foods_path
  end

  it 'Shows the page title' do
    expect(page).to have_content('Foods')
  end

  it 'Shows 2 foods in the list' do
    expect(page).to have_selector('.food-row', count: 2)
  end

  it 'Shows the foods names' do
    expect(page).to have_content('orange')
    expect(page).to have_content('apple')
  end

  it 'Shows the foods prices' do
    expect(page).to have_content('10')
    expect(page).to have_content('20')
  end

  it 'Add food button should redirect to correct page' do
    new_food_link = page.all(:link, 'Add food')[0]
    click_link(href: new_food_link['href'])
    expect(current_path) == new_food_path
  end
end
