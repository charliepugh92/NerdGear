Rails.application.routes.draw do
  resources :accounts
  root 'home#index'
  get 'category/:id', to: 'categories#show'
  get 'cart', to: 'home#cart_splash'

  get 'register', to: 'accounts#new'
  post 'register', to: 'accounts#create'

  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  get 'logout', to: 'sessions#destroy'
end
