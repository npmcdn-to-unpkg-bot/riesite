Rails.application.routes.draw do
  get 'favorite_products/new'

  resources :users, :only => [:new, :edit, :create, :index, :update, :show]
  resources :products
  resources :categories
  resources :favourites, :only => [:create, :destroy]
  resources :favorite_products, :only => [:create, :destroy]


  root :to => 'categories#index'
  get '/signup' => 'users#new'

  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'



end
