Rails.application.routes.draw do
  devise_for :users #:controllers => { registrations: 'registrations' }
  resources :groups
  resources :purchases
  resources :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "users#sign_up"
end
