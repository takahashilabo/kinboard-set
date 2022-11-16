Rails.application.routes.draw do
  resources :users, only: [:index, :new, :create, :edit, :update, :destroy]
  resources :scores, only: [:index]
  get 'top/main'
  root 'top#main'
  get 'users/profile'
end
