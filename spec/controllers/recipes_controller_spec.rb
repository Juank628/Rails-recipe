require 'rails_helper'
require_relative '../support/devise'

RSpec.describe RecipesController, type: :controller do
  let!(:user) { User.create(name: 'Prangon Ghose', email: 'test@example.com', password: '12345678') }
  before(:each) do
    user.confirm
    sign_in user
    @recipe = Recipe.create(name: 'new', preparation_time: '10', cooking_time: '5',
                            description: 'test description', public: true, user:)
    @recipe2 = Recipe.create(name: 'new2', preparation_time: '10', cooking_time: '5',
                             description: 'text description 2', public: true, user:)
  end

  describe 'Get id' do
    it 'returns a successful response' do
      get :show, params: { id: @recipe.id }
      expect(response).to be_successful
      expect(response).to render_template(:show)
    end

    it 'renders template index' do
      get :index
      expect(response).to render_template(:index)
    end
  end
end
