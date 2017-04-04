Rails.application.routes.draw do

  get 'sessions/new'

  root "pages#home"
  
  get '/help', to: 'pages#help'
  get '/shop', to: 'pages#shop'
  get '/about', to: 'pages#about'
  get '/navigation', to: 'pages#navigation'
  get '/reviews', to: 'pages#reviews'
  get '/contact', to: 'pages#contact'
  
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  
  get '/account', to: 'users#account'
  get  '/signup',  to: 'users#account'
  post '/signup',  to: 'users#create'
  
  resources :users
end
