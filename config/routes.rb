Rails.application.routes.draw do

  root controller: :index, action: :index

  resources :news, only: [:index, :show, :new]

  resources :videos, only: :index

  resources :featured, only: :index

  resources :trending, only: :index
end
