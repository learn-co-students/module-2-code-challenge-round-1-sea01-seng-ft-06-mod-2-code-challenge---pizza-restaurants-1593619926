Rails.application.routes.draw do
  resources :restaurantpizzas
  # get '/restaurants', to: 'restaurants#index'
  # get '/pizzas', to: 'pizzas#index'
  resources :pizzas
  resources :restaurants
end
