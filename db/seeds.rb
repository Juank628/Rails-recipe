# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

user1 = User.create(name: 'Tom')
user2 = User.create(name: 'Juan')


recipe1 = Recipe.create(name: 'pizza', preparation_time: 3600, cooking_time: 2500, description: 'my recipe 1', public: true)
recipe2 = Recipe.create(name: 'bread', preparation_time: 3750, cooking_time: 2400, description: 'my recipe 2', public: false)

food1 = Food.create(name: 'tommato', measurement_unit: 'unit', price: 15, quantity: 10, user: user1) 
food2 = Food.create(name: 'potatoe', measurement_unit: 'unit', price: 10, quantity: 7, user: user2)

recipe_food1 = FoodRecipe.create(recipe: recipe1, food: food2, quantity: 3)
