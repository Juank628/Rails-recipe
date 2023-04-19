class PublicRecipesController < ApplicationController
  def index
    @user = current_user
    @public_recipes = Recipe.where(public: true)
  end

  def show
    @user = current_user
    @public_recipe = Recipe.find(params[:id])
  end
end
