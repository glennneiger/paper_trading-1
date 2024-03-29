Rails.application.routes.draw do
  root 'home#index'
  get 'home/index'
  get "logout", to: "sessions#destroy", as: "logout"
  get "login", to: "sessions#new", as: "login"
  get "signup", to: "users#new", as: "signup"
  resources :users
  resources :sessions

  get 'users/new'

  get 'stock/:id', to: "stocks#show"

  get 'orders/new'
  post 'orders/create'
  get 'orders', to: "orders#show"
  get 'orders/edit'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
