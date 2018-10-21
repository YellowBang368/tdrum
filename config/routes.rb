Rails.application.routes.draw do

  root "pages#index"
  get "about", to: "pages#about"
  get "ai", to: "pages#ai"
  get "contacts", to: "pages#contacts"
  get "investors", to: "pages#investors"

  resources :sessions, only: [:new, :create, :destroy]

  resources :admins
  get "adminpanel", to: "admins#index"
  get "admin/new", to: "admins#new", as: "signup"
  get "admin", to: "sessions#new", as: "login"
  get "adminout", to: "sessions#destroy", as: "logout"

  resources :products
  post "products/new", to: "products#create"

  resources :reviews
end
