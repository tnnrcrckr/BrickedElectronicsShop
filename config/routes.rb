Rails.application.routes.draw do

  root "pages#home"
  
  get '/help', to: 'pages#help'
  get '/shop', to: 'pages#shop'
  get '/account', to: 'pages#account'
  get '/about', to: 'pages#about'
  get '/navigation', to: 'pages#navigation'
  get '/reviews', to: 'pages#reviews'
  
end
