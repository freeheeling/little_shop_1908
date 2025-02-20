Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get "/merchants", to: "merchants#index"
  get "/merchants/new", to: "merchants#new"
  get "/merchants/:id", to: "merchants#show"
  post "/merchants", to: "merchants#create"
  get "/merchants/:id/edit", to: "merchants#edit"
  patch "/merchants/:id", to: "merchants#update"
  delete "/merchants/:id", to: "merchants#destroy"

  get "/items", to: "items#index"
  get "/items/:id", to: "items#show"
  get "/items/:id/edit", to: "items#edit"
  patch "/items/:id", to: "items#update"
  delete "/items/:id", to: "items#destroy"

  get "/items/:id/reviews/new", to: "reviews#new"
  post "/items/:id/reviews", to: "reviews#create"

  get "/reviews/:id/edit", to: "reviews#edit"
  patch "/reviews/:id", to: "reviews#update"
  delete "/reviews/:id", to: "reviews#destroy"

  get "/merchants/:merchant_id/items", to: "items#index"
  get "/merchants/:merchant_id/items/new", to: "items#new"
  post "/merchants/:merchant_id/items", to: "items#create"

  get '/cart', to: 'cart#show'
  patch '/cart/:item_id', to: 'cart#update'
  patch '/cart/:item_id/add', to: 'cart#add'
  patch '/cart/:item_id/subtract', to: 'cart#subtract'
  delete '/cart/:item_id', to: 'cart#remove'
  delete '/cart', to: 'cart#destroy'

  get '/cart/new_order', to: 'orders#new'
  get '/order/:id', to: 'orders#show'
  post '/order', to: 'orders#create'

  get '/verified_order', to: 'orders#verified_order'
  get '/verified_order/:id/edit', to: 'orders#edit'
  patch 'verified_order/:id', to: 'orders#update'
  delete '/verified_order/:order_id/:item_order_id', to: 'orders#destroy_item'
  delete '/verified_order/:id', to: 'orders#destroy'
end
