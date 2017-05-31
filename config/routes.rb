Rails.application.routes.draw do

  get 'trending/index'

  root controller: :index, action: :index

  resources :news, only: :index

  resources :videos, only: :index

  resources :featured, only: :index

  resources :trending, only: :index
end
