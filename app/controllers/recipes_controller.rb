class RecipesController < ApplicationController
  def index
    @user = current_user
    @recipes = @user.recipes.all
  end

  def show
    @user = current_user
    @recipe = @user.recipes.find(params[:id])
  end

  def new
    @recipe = Recipe.new
  end

  def create
    @recipe = current_user.recipes.new(recipe_params)
    @recipe.user = current_user

    respond_to do |format|
      if @recipe.save
        format.html { redirect_to recipes_path }
      else
        format.html { render :new }
      end
    end
  end

  def recipe_params
    params.require(:recipe).permit(:name, :preparation_time, :cooking_time, :description, :public)
  end
end
