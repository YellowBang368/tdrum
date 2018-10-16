Rails.application.routes.draw do

  root "products#index"

  resource :product
  post "product/new", to: "products#create"

  resource :review
  post "review/new", to: "reviews#create"

end
