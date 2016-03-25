Rails.application.routes.draw do
  resources :users, :only => [:new, :create, :index, :update]
  resources :products
  resources :categories


  root :to => 'categories#index'
  get '/signup' => 'users#new'

  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'



end
