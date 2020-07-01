Rails.application.routes.draw do
  resources :restaurant_pizzas
  resources :restaurants, ony: [:index, :show, :edit, :update]
  resources :pizzas, only: [:index, :show, :new, :create]
  #get '/restaurants', to: 'restaurants#index'
  #get '/pizzas', to: 'pizzas#index'
end
