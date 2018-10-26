Rails.application.routes.draw do

  devise_for :users
  root "pages#index"
  get "about", to: "pages#about"
  get "ai", to: "pages#ai"
  get "contacts", to: "pages#contacts"
  get "investors", to: "pages#investors"

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'

  resources :products
  post "products/new", to: "products#create"

  resources :reviews
  resources :accessories
end
