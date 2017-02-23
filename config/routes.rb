Rails.application.routes.draw do

  root "pages#home"

  get 'pages/home'

  get 'pages/help'

  get 'pages/shop'

  get 'pages/account'
end
