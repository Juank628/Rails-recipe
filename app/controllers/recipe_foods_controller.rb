class RecipeFoodsController < ApplicationController
  def index; end

  def show; end

  def new
    @recipe_food = RecipeFood.new
  end

  def create
    @recipe_food = RecipeFood.new(recipe_food_params)
    @recipe = current_user.recipes.find(@recipe_food.recipe_id)
    @food = current_user.foods.find(@recipe_food.food_id)
    existing_record = RecipeFood.find_by(recipe_id: @recipe_food.recipe_id, food_id: @recipe_food.food_id)
    if existing_record
      flash[:error] = 'A food item with this name is already added to the recipe.'
      redirect_to recipe_path(@recipe)
      return
    end
    @recipe_food.recipe = @recipe
    @recipe_food.food = @food
    if @recipe_food.save
      flash[:notice] = 'Food added successfully'
      redirect_to recipe_path(@recipe)
    else
      render :new
    end
  end

  def update
    @recipe_food = RecipeFood.find(params[:id])

    if @recipe_food.update(recipe_food_params)
      redirect_to recipe_path(@recipe_food.recipe), notice: 'Food quantity updated successfully'
    else
      render :edit
    end
  end

  def destroy
    @recipe_food = RecipeFood.find(params[:id])
    @recipe_food.destroy
    redirect_to recipe_path(@recipe_food.recipe), notice: 'Food item deleted successfully'
  end

  private

  def recipe_food_params
    params.require(:recipe_food).permit(:recipe_id, :food_id, :quantity)
  end
end
