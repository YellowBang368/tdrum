Rails.application.routes.draw do

  resources :sessions, only: [:new, :create, :destroy]

  resources :admins
  get "adminpanel", to: "admins#index"

  get "admin", to: "sessions#new", as: "login"
  get "adminout", to: "sessions#destroy", as: "logout"

  root "products#main"

  resource :product
  post "product/new", to: "products#create"
  get "products", to: "products#index"

  resource :review
  post "review/new", to: "reviews#create"
  get "reviews", to: "reviews#index"
end
