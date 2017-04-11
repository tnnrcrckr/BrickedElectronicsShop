Rails.application.routes.draw do
  get 'products/show'

  #get 'password_resets/new'

  #get 'password_resets/edit'

  root   'pages#home'
  get    '/contact', to: 'pages#contact'
  get    '/about',   to: 'pages#about'
  get    '/help',    to: 'pages#help'
  get    '/navigation', to: 'pages#navigation'
  
  get    '/signup',  to: 'users#new'
  post   '/signup',  to: 'users#create'
  
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  
  get    '/reviews',             to: 'reviews#index'
  get    '/new_review',          to: 'reviews#new'
  get    '/edit_review/:id',   to: 'reviews#edit',    as: "edit_review"
  delete '/reviews/:id', to: 'reviews#destroy', as: "delete_review"
  
  get    '/products', to: 'products#show'
  
  resources :users
  resources :account_activations, only: [:edit]
  resources :password_resets,     only: [:new, :create, :edit, :update]
  resources :reviews,             only: [:create, :update]
end
