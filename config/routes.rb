Rails.application.routes.draw do
  devise_for :users
  resources :groups
  resources :purchases
  resources :users
  resources :homes
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root 'groups#index'
  root 'homes#index'
end
