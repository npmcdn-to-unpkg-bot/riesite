Rails.application.routes.draw do
  get 'favorite_products/new'

  resources :users
  resources :products
  resources :categories
  resources :favourites, :only => [:create, :destroy]
  resources :favorite_products, :only => [:create, :destroy]
  resources :subscribers
  resources :orders
  resources :charges

  get '/cart' => 'cart_items#index'
  get '/cart/add' => 'cart_items#add_cart'
  put '/cart/:id/:sign' => 'cart_items#change_qty', :as => 'update_item'
  delete '/cart/:id' => 'cart_items#destroy', :as => 'delete_item'
  delete '/cart/:id/all' => 'cart_items#destroy_cart', :as => 'delete_cart'
  resources :cart_items

  root :to => 'categories#index'

  get '/signup' => 'users#new'
  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'

  get '/reports/inventory' => 'reports#inventory'
  get '/reports/sales' => 'reports#sales'
  get '/reports/profit' => 'reports#profit'
  get '/reports/shipping' => 'reports#shipping'
  get '/reports/finalise' => 'reports#finalise'

end
