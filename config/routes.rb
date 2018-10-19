Rails.application.routes.draw do

  resources :sessions, only: [:new, :create, :destroy]

  resources :admins
  get "adminpanel", to: "admins#index"

  get "admin/new", to: "admins#new", as: "signup"
  get "admin", to: "sessions#new", as: "login"
  get "adminout", to: "sessions#destroy", as: "logout"

  root "products#main"

  resources :products
  post "product/new", to: "products#create"
  get "products", to: "products#index"

  resource :reviews
  post "review/new", to: "reviews#create"
end
