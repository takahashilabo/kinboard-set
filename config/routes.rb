Rails.application.routes.draw do
  resources :users, only: [:index, :new, :create, :edit, :update, :destroy]
  get 'users/profile'
  get 'top/main'
  root 'top#main'
  post 'top/login'
  get 'top/login'
  get 'top/logout'
end
