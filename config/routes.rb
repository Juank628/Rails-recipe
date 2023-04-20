Rails.application.routes.draw do
  devise_for :users
  root to: 'recipes#index'
  resources :recipes, only: %i[index show new create update destroy]
  resources :public_recipes, only: %i[index show]
  resources :foods, only: %i[index show new create destroy]
  resources :recipe_foods, only: %i[new create update destroy]
end
