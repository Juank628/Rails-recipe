class ShoppingListsController < ApplicationController
  def index
    @ingredients = RecipeFood.group(:food).sum(:quantity)
    @ingredients = @ingredients.select { |ingredient| ingredient.user_id == current_user.id }
    @foods = current_user.foods.all
    @shopping_list = []
    @to_buy = 0
    @total_value = 0

    return if @ingredients.length == 0 || @foods.length == 0

    @ingredients.each do |ingredient|
      @to_buy = ingredient[1] - @foods.find(ingredient[0].id).quantity
      next unless @to_buy.positive?

      @shopping_list.push({
                            name: ingredient[0].name,
                            quantity: @to_buy,
                            price: ingredient[0].price * @to_buy
                          })

      @total_value += ingredient[0].price * @to_buy
    end
  end
end
