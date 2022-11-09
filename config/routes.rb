Rails.application.routes.draw do
  resources :users
  get 'top/main'
  root 'top#main'
end
