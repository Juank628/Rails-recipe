require 'rails_helper'
require_relative '../support/devise'

RSpec.describe ShoppingListsController, type: :controller do
  let!(:user) { User.create(name: 'Prangon Ghose', email: 'test@example.com', password: '12345678') }
  before(:each) do
    user.confirm
    sign_in user
    @recipe = Recipe.create(name: 'new', preparation_time: '10', cooking_time: '5',
                            description: 'test description', public: true, user:)
    @recipe2 = Recipe.create(name: 'new2', preparation_time: '10', cooking_time: '5',
                             description: 'text description 2', public: true, user:)
  end

  it 'should response /general_shopping_list' do
    get :index
    expect(response).to be_successful
  end

  it 'renders template index' do
    get :index
    expect(response).to render_template(:index)
  end
end
