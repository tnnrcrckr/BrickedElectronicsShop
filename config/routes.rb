Rails.application.routes.draw do

  root   'pages#home'
  get    '/contact', to: 'pages#contact'
  get    '/about',   to: 'pages#about'
  get    '/help',    to: 'pages#help'
  get    '/navigation', to: 'pages#navigation'
  
  get    '/signup',  to: 'users#new'
  post   '/signup',  to: 'users#create'
  delete '/delete/:id',  to: 'users#destroy', as: "delete_user"
  
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  
  get    '/reviews',         to: 'reviews#index'
  get    '/new_review',      to: 'reviews#new'
  get    '/edit_review/:id', to: 'reviews#edit',    as: "edit_review"
  delete '/reviews/:id',     to: 'reviews#destroy', as: "delete_review"
  
  get    '/products', to: 'products#show'
  
  post 'add_to_cart/:p_id/:u_id', to: 'carts#add',    as: "add_to_cart"
  post 'rmv_from_cart/:id',       to: 'carts#remove', as: "remove_from_cart"
  post 'empty_cart/:id',          to: 'carts#empty',  as: "empty_cart"
  
  resources :users
  resources :account_activations, only: [:edit]
  resources :password_resets,     only: [:new, :create, :edit, :update]
  resources :reviews,             only: [:create, :update]
end
