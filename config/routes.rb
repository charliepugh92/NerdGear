Rails.application.routes.draw do
  root 'home#index'
  get 'category/:id', to: 'categories#show'
  get 'cart', to: 'home#cart_splash'
  get 'login', to: 'home#login_splash'
end
