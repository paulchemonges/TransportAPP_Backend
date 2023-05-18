Rails.application.routes.draw do
  resources :sellers
  resources :buyers
  resources :products
  resources :orders
end
