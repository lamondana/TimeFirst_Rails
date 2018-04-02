Rails.application.routes.draw do
  root 'access#menu'

  get 'teacher', :to => 'access#menu'
  get 'access/menu'
  get 'access/login'
  post 'access/attempt_login'
  get 'access/logout'
  patch 'classroom/update'
  put 'actuals', to: 'actuals#update'
  get 'actual/edit'


  #get 'users/new'
  resources :actuals, only: [:create]
  resources :classrooms
  resources :users
  resources :pupils
  resources :teachers
end
