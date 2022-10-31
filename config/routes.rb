Rails.application.routes.draw do
  # get 'users/new'
  # get 'pages/home'
  root :to => 'pages#home'
  resources :users, :only => [:new, :create, :index]

  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'

  resources :countries
  resources :cities
end


