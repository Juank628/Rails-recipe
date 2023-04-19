Rails.application.routes.draw do
  get 'public_recipes/index'
  get 'public_recipes/show'
  get 'recipes/index'
  get 'recipes/show'
  devise_for :users
  root to: 'recipes#index'
  resources :recipes, only: %i[index show new create]
  resources :public_recipes, only: %i[index show]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :foods
end
