Rails.application.routes.draw do
  get 'favorite_products/new'

  resources :users
  resources :products
  resources :categories
  resources :favourites, :only => [:create, :destroy]
  resources :favorite_products, :only => [:create, :destroy]
  resources :subscribers
  resources :wishes
  resources :charges


  get '/cart' => 'shopping_cart#index'
  get '/cart/add' => 'shopping_cart#add_cart'
  put '/cart/:id/:sign' => 'shopping_cart#change_qty', :as => 'update_item'
  delete '/cart/:id' => 'shopping_cart#destroy', :as => 'delete_item'
  delete '/cart/:id/all' => 'shopping_cart#destroy_cart', :as => 'delete_cart'
  resources :shopping_carts


  root :to => 'categories#index'

  get '/signup' => 'users#new'
  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'

end
