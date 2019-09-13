Rails.application.routes.draw do
  resources :brands
  resources :categories
  get 'home/index'
  root to: "home#index"

  devise_for :users
  resources :products
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
