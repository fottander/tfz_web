Rails.application.routes.draw do

  root controller: :index, action: :index

  resources :news, only: :index

  resources :videos, only: :index

  resources :featured, only: :index
end
