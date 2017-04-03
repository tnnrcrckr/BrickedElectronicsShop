Rails.application.routes.draw do

  root "pages#home"
  
  get '/help', to: 'pages#help'
  get '/shop', to: 'pages#shop'
  get '/about', to: 'pages#about'
  get '/navigation', to: 'pages#navigation'
  get '/reviews', to: 'pages#reviews'
  get '/contact', to: 'pages#contact'
  
  
  get '/account', to: 'users#account'
  get  '/signup',  to: 'users#new'
  post '/signup',  to: 'users#create'
  post '/login', to: 'users#login'
  
  resources :users
end
