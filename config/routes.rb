Rails.application.routes.draw do
  resources :users
  resources :scores, only: [:index]
  get 'top/main'
  root 'top#main'
end
