Rails.application.routes.draw do

  resources :post_attachments
  get 'posts/index'

  devise_for :users
  root "pages#index"
  get "about", to: "pages#about"
  get "ai", to: "pages#ai"
  get "contacts", to: "pages#contacts"
  get "investors", to: "pages#investors"
  get "teta", to: "pages#teta"
  get "process", to: "pages#process"
  get "howtoplay", to: "pages#howtoplay"
  get "effects", to: "pages#effects"
  get "blog", to: "posts#index"

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'

  resources :products
  post "products/new", to: "products#create"

  get "blog", to: "posts#index"
  resources :posts

  resources :reviews
  resources :accessories
end
