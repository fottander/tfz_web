Rails.application.routes.draw do

  root controller: :index, action: :index

  resources :news, only: [:index, :show]

  resources :videos, only: :index

  resources :featured, only: :index

  resources :trending, only: :index

  resources :riders, only: :index
end
