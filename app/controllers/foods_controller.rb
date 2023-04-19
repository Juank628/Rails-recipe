class FoodsController < ApplicationController
    def index
        @foods = current_user.foods
    end

    def new
        @food = Food.new
    end

    def create
        @food = current_user.foods.new(food_params)
        @food.user = current_user
    
        respond_to do |format|
          if @food.save
            format.html { redirect_to foods_path }
          else
            format.html { render :new }
          end
        end
      end
    
      def food_params
        params.require(:food).permit(:name, :measurement_unit, :price, :quantity)
      end
end
