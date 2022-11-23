Rails.application.routes.draw do
  resources :users, only: [:index, :new, :create, :edit, :update, :destroy]
  get 'users/profile'
  get 'top/main'
  root 'top#login'
  root 'top#main'
  post 'top/login'
  get 'top/login'
  get 'top/logout'
  resources :thres
  post '/thres/search', to: 'thres#search'
end
