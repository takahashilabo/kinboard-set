Rails.application.routes.draw do
  get 'scores/index'
  root 'top#main'
  get 'top/main'
  
end
