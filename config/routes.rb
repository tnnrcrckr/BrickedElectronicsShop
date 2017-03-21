Rails.application.routes.draw do

  root "pages#home"

  get 'pages/home'

  get 'pages/help'

  get 'pages/shop'

  get 'pages/account'
  
  get 'pages/about'
  
  get 'pages/navigation'
  
  get 'pages/reviews'
  
  
  get '/signup', to: 'users#new'
  post	'/signup',	to: 'users#create'
  resources :users
end
