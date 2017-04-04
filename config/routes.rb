Rails.application.routes.draw do
  root   'pages#home'
  get    '/contact', to: 'pages#contact'
  get    '/about',   to: 'pages#about'
  get    '/help',    to: 'pages#help'
  get    '/navigation', to: 'pages#navigation'
  get    '/reviews', to: 'pages#reviews'
  get    '/shop',    to: 'pages#shop'
  
  get    '/signup',  to: 'users#new'
  post   '/signup',  to: 'users#create'
  
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  resources :users
end
