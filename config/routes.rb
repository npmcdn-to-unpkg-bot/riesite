Rails.application.routes.draw do
  resources :users, :only => [:new, :edit, :create, :index, :update, :show]
  resources :products
  resources :categories
  resources :favourites, :only => [:create, :destroy]


  root :to => 'categories#index'
  get '/signup' => 'users#new'

  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'



end
