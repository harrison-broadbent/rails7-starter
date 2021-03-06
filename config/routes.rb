Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  # devise_for must sit above resources :users
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  # resources :users, only: [:show]
  root to: 'home#index'
end
