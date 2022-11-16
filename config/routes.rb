Rails.application.routes.draw do
  resources :users
  get 'top/main'
  root 'top#login'
  post 'top/login'
  get 'top/logout'
end
