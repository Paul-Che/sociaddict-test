Rails.application.routes.draw do

  devise_for :users
  root to: 'pages#home'

  resources :users, only: [:edit, :update, :destroy]
end
