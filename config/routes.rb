Rails.application.routes.draw do

  root "pages#home"

  #get 'pages/home'
  #get 'pages/help'
  #get 'pages/shop'
  #get 'pages/account'
  #get 'pages/about'
  #get 'pages/navigation'
  #get 'pages/reviews'
  
  get '/help', to: 'pages#help'
  get '/shop', to: 'pages#shop'
  get '/account', to: 'pages#account'
  get '/about', to: 'pages#about'
  get '/navigation', to: 'pages#navigation'
  get '/reviews', to: 'pages#reviews'
  
end
