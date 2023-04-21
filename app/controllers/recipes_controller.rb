class RecipesController < ApplicationController
  def index
    @user = current_user
    @recipes = @user.recipes.all.order(created_at: :desc)
  end

  def show
    @user = current_user
    @recipe = @user.recipes.find(params[:id])
    @foods = @user.foods.all
    @recipe_food = RecipeFood.new
    @recipe_foods = RecipeFood.where(recipe_id: params[:id]).includes([:food])
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

  def update
    @recipe = Recipe.find(params[:id])
    if @recipe.update(recipe_params)
      respond_to do |format|
        format.html { redirect_to @recipe }
        format.js
      end
    else
      respond_to do |format|
        format.html { render :edit }
        format.js
      end
    end
  end

  def destroy
    @recipe = Recipe.find(params[:id])
    @recipe.destroy
    redirect_to recipes_path, notice: 'Recipe deleted successfully'
  end

  private

  def recipe_params
    params.require(:recipe).permit(:name, :preparation_time, :cooking_time, :description, :public)
  end
end
