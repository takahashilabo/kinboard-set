Rails.application.routes.draw do
  get 'responses/index'
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
  resources :responses
  resources :likes
  resources :dislikes
  get '/get_image/:id', to: 'responses#get_image'
end
