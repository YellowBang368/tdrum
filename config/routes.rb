Rails.application.routes.draw do

  resources :sessions, only: [:new, :create, :destroy]

  resources :admins
  get "adminpanel", to: "admins#index"

  get "admin/new", to: "admins#new", as: "signup"
  get "admin", to: "sessions#new", as: "login"
  get "adminout", to: "sessions#destroy", as: "logout"

  root "products#main"

  resources :products
  post "products/new", to: "products#create"
  resources :reviews
end
