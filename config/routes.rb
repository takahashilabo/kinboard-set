Rails.application.routes.draw do
  resources :users
  get 'top/main'
  root 'top#main'
  post 'top/login'
  get 'top/login'
  get 'top/logout'
end
