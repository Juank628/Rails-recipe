class PublicRecipesController < ApplicationController
  def index
    @user = current_user
    @public_recipes = Recipe.includes([:user]).includes([:recipe_foods]).where(public: true).order(created_at: :desc)
  end

  def show
    @user = current_user
    @public_recipe = Recipe.find(params[:id])
    @public_recipe_foods = RecipeFood.where(recipe_id: params[:id])
  end
end
