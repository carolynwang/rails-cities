Rails.application.routes.draw do
  root "main#index"

  get 'cities/view', to: 'cities#view'
  get 'cities/new', to: 'cities#new'
  get 'cities/update', to: 'cities#update'
  get 'cities/delete', to: 'cities#delete'
  post 'cities/new', to: 'cities#create'
  post 'cities/create', to: 'cities#create'
  post 'cities/postUpdate', to: 'cities#postUpdate'
  post 'cities/postDelete', to: 'cities#postDelete'
  post 'cities/main', to: 'cities#returnToHome'
end
